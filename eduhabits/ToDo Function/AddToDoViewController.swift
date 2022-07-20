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
        let toDo = ToDo()

        if let titleText = titleTextField.text {
          toDo.name = titleText
        }
      
        if let dateText = dateTextField.text {
            toDo.date = dateText
        }
      
      previousVC.toDos.append(toDo)
      previousVC.tableView.reloadData()
      navigationController?.popViewController(animated: true)

}
    
}
