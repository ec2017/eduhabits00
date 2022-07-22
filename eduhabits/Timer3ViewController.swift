//
//  Timer3ViewController.swift
//  eduhabits
//
//  Created by Megan Picard on 2022-07-21.
//

import UIKit

class Timer3ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
   
    @IBOutlet weak var timeTextView: UITextView!
    
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var resetButton: UIButton!
    
    var seconds = 0
    var timer = Timer()
    
    @IBAction func startTapped(_ sender: UIButton) {
        guard let timerInfo = timeTextView.text else {return}
        
        do {
            seconds = try timeToSeconds(for: timerInfo)
        } catch {
                print ("how unfourante..")
            
            guard seconds > 0 else {return}
           
            resetButton.isHidden = false
            
            timer.invalidate()
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(count), userInfo: nil, repeats: true)
        
    }
    
    
    }
    @IBAction func resetTapped(_ sender: UIButton) {
        reset()
    
    }
    
    func reset() {
        timer.invalidate()
    
        seconds = 0
        timeTextView.text = "00:00:00"
        resetButton.isHidden = true
        timeTextView.isEditable = true
        
        startButton.setTitle("START", for: .normal)
    }
    
    @objc func count(){
        seconds -= 1

        timeTextView.text = secondsToTime(for: seconds)
     
        if timeTextView.text == "24:00:00" {
            reset()
        }
        if timeTextView.text == "00:00:00" {
            reset()
    
        }
    }
}
