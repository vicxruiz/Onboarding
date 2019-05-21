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
    
    @IBOutlet weak var taskImageView: UIImageView!
    @IBOutlet weak var taskTitleLabel: UILabel!
    @IBOutlet weak var taskDetailLabel: UILabel!
    
    var task: Task? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        guard let task = task else {
            return
        }
        taskTitleLabel.text = task.taskName
        taskDetailLabel.text = ("\(task.numberOfTasks) Tasks")
        let taskImage = UIImage(named: task.taskName)
        taskImageView.image = taskImage
    }
}
