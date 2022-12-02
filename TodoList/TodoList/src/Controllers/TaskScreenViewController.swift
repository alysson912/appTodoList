//
//  TaskScreenViewController.swift
//  TodoList
//
//  Created by ALYSSON DODO on 29/11/22.
//

import UIKit

class TaskScreenViewController: UIViewController {
    
    @IBOutlet weak var taskTableView: UITableView!
    @IBOutlet weak var addTaskButton: UIButton!
    
    var data : [Task] = []
    var listImage: [String] = ["Image-1", "Image-2", "Image-3", "Image-4", "Image-5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTableView()
    }
    
    func configTableView(){
        taskTableView.delegate = self
        taskTableView.dataSource = self
        // register cell
        taskTableView.register(TasksTableViewCell.nib(), forCellReuseIdentifier: TasksTableViewCell.identifier)
    }
    
    @IBAction func tappedAddTaskButton(_ sender: UIButton) {
        
        let vc : RegisterTaskViewController? = UIStoryboard(name: "RegisterTask", bundle: nil).instantiateViewController(withIdentifier: "RegisterTask") as? RegisterTaskViewController
       
        vc?.delegate = self
       self.present(vc ?? UIViewController(), animated: true)
    }
}

extension TaskScreenViewController: RegisterTaskViewControllerProtocol {
    func addTask(task: Task) {
        data.append(task)
        taskTableView.reloadData()
    }
    
    
}

extension TaskScreenViewController : UITableViewDelegate, UITableViewDataSource{
    // ao clicar no item
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: TasksTableViewCell.identifier, for: indexPath) as? TasksTableViewCell
        cell?.configCell(task: data[ indexPath.row])
        
    
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
}
