//
//  RegisterTaskViewController.swift
//  TodoList
//
//  Created by ALYSSON DODO on 28/11/22.
//

import UIKit

class RegisterTaskViewController: UIViewController {

    
    @IBOutlet weak var taskTitleLabel: UILabel!
    @IBOutlet weak var taskTextfield: UITextField!
    @IBOutlet weak var taskDescriptionTextfield: UITextField!
    
    @IBOutlet weak var addButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTask()
        // Do any additional setup after loading the view.
    }
    
    func configTask(){
        taskTextfield.delegate = self
        taskDescriptionTextfield.delegate = self
        
        
        func addElements(task : Task){
            taskTextfield.text = task.nomeTask
            taskDescriptionTextfield.text = task.description
        }
    }
    
    @IBAction func tappedAddButton(_ sender: Any) {
        let taskScreen = TaskScreenViewController()
        
        taskScreen.data.append(
            Task(
                nomeTask: taskTextfield.text ?? "",
                description: taskDescriptionTextfield.text ?? ""))
        
        let tableView = TaskScreenViewController()
        tableView.taskTableView.reloadData()
    }
    
    
}
extension RegisterTaskViewController : UITextFieldDelegate {
    
   
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        // ao clicar baixar a tela 
        return true
    }
}
