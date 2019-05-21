//
//  TaskCollectionViewCell.swift
//  Onboarding
//
//  Created by Victor  on 5/21/19.
//  Copyright © 2019 com.Victor. All rights reserved.
//

import Foundation
import UIKit

class TaskCollectionViewCell: UICollectionViewCell {
    //Properties to display in cell
    @IBOutlet weak var taskImageView: UIImageView!
    @IBOutlet weak var taskTitleLabel: UILabel!
    @IBOutlet weak var taskDetailLabel: UILabel!
    
    //checking to see if cell has a task object
    var task: Task? {
        didSet {
            updateViews()
        }
    }
    
    //updates the views on each cell
    func updateViews() {
        //unwrapping optional object
        guard let task = task else {
            print("no task")
            return
        }
        //assigning properties to labels
        taskTitleLabel.text = task.taskName
        taskDetailLabel.text = ("\(task.numberOfTasks) Tasks")
        let taskImage = UIImage(named: task.taskName)
        taskImageView.image = taskImage
    }
}
