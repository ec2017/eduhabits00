//
//  AddToDoViewController.swift
//  eduhabits
//
//  Created by erika on 7/19/22.
//

import UIKit

class AddToDoViewController: UIViewController {

var previousVC = ToDoTableViewController()
    
  @IBOutlet weak var titleTextField: UITextField!
  @IBOutlet weak var dateTextField: UITextField!

  override func viewDidLoad() {
    super.viewDidLoad()

  }

    @IBAction func addTapped(_ sender: Any) {

      // we have to grab this view context to be able to work with Core Data
      if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {

        // we are creating a new ToDoCD object here, naming it toDo
        let toDo = ToDoCD(entity: ToDoCD.entity(), insertInto: context)

        // if the titleTextField has text, we will call that text titleText
        if let titleText = titleTextField.text {
            // we will take the titleText and assign that value to toDo.name
            // this .name and .important came from the attributes you typed in on the Core Data page!
            if let dateText = dateTextField.text {
            toDo.name = titleText
            toDo.date = dateText
        }
        }

        try? context.save()

        navigationController?.popViewController(animated: true)
      }

    }
    
}
