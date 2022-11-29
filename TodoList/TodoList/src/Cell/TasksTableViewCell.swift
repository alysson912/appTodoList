//
//  tasksTableViewCell.swift
//  TodoList
//
//  Created by ALYSSON DODO on 28/11/22.
//

import UIKit

class TasksTableViewCell: UITableViewCell {

    @IBOutlet weak var imageTaskImageView: UIImageView!
    @IBOutlet weak var titleTaskLabel: UILabel!
    @IBOutlet weak var descriptionTaskLabel: UILabel!
    
    
    static  let identifier = "TasksTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

  
    func configCell(task : Task){
        self.titleTaskLabel.text = task.nomeTask
        self.descriptionTaskLabel.text = task.description
        
    }
}
