//
//  MAViewController.swift
//  eduhabits
//
//  Created by Megan Picard on 2022-07-22.
//

import UIKit

class MAViewController: UIViewController {

    @IBOutlet weak var TextLabel: UILabel!
    
    @IBAction func randomButton(_ sender: Any) {
       
       let motvationalQ = ["My ability to conquer my challenges is limitless; my potential to succeed is infinite.", "I have been given endless talents which I will utilize every day.", "My positivity makes others strive to be positive too.", "I execute my plan and produce expected results.", "My ability to conquer my challenges is limitless; my potential to succeed is infinite.", "I am the architect of my life. I build its foundation and choose its contents.", "All of my problems have a solution.", "I will not stress over things I cannot control.", "I matter and what I have to offer this world also matters.","I may not understand the good in this situation but it is there.", "I choose to see positivity in all areas of my life.", "I make myself a priority every day.", "I am grateful I get to grow every day.", "My voice matters.", "I believe in the person I am becoming.", "My choices are my own.", "I deserve to be proud of myself."]

    
        TextLabel.text = motvationalQ.randomElement()
    
    
    
    }
    
    
       override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

