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
    @IBOutlet weak var timeTextView: UILabel!
    
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var resetButton: UIButton!
    
    var seconds = 0
    var timer = Timer()
    
    @IBAction func startTapped(_ sender: Any) {
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
    @IBAction func resetTapped(_ sender: Any) {
        }
    @objc func count(){
        seconds -= 1
        timeTextView.text = secondsToTime(for: seconds)
    }


}
