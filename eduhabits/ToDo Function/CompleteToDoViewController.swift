//
//  CompleteToDoViewController.swift
//  eduhabits
//
//  Created by erika on 7/19/22.
//

import UIKit

class CompleteToDoViewController: UIViewController {

  var previousVC = ToDoTableViewController()
  var selectedToDo : ToDoCD?
    
  @IBOutlet weak var titleLabel: UILabel!
  @IBOutlet weak var dateLabel: UILabel!
    
  override func viewDidLoad() {
      super.viewDidLoad()

      titleLabel.text = selectedToDo?.name
      dateLabel.text = selectedToDo?.date
    }

    @IBAction func completeTapped(_ sender: Any) {
      if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
        if let theToDo = selectedToDo {
          context.delete(theToDo)
          navigationController?.popViewController(animated: true)
        }
      }
    }
}
