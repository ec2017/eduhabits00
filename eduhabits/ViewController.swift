//
//  ViewController.swift
//  eduhabits
//
//  Created by erika on 7/19/22.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.isHidden = true
        helloLabel.isHidden = true
    }
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var helloLabel: UILabel!
    @IBOutlet weak var askNameLabel: UILabel!
    
    @IBOutlet weak var nameField: UITextField!

    @IBAction func nameField(_ sender: Any) {
        if (helloLabel.isHidden == false) {
            helloLabel.isHidden = true
            } else {
                helloLabel.isHidden = false
                
        if (nameLabel.isHidden == false) {
              nameLabel.isHidden = true
            } else {
                nameLabel.isHidden = false
                
        let mText = nameField.text
        nameLabel.text = mText

                if (askNameLabel.isHidden == false) {
                    askNameLabel.isHidden = true
                        }
    }
    
}
    }
    
}
