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

    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondViewController = segue.destination as! secondViewController
        secondViewController.userName = nameField.text!
    }
    
    @IBOutlet weak var nameField: UITextField!

    @IBAction func continueButton(_ sender: Any) {
        if nameField.text != "" {
            performSegue(withIdentifier: "segue1", sender: self)
        
    }
    
    }
}


    

