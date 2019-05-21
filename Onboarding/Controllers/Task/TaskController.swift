//
//  TaskController.swift
//  Onboarding
//
//  Created by Victor  on 5/21/19.
//  Copyright © 2019 com.Victor. All rights reserved.
//

import Foundation

//handles task data
class TaskController {
    
    //MARK: Properties
    
    var tasks: [Task] = []
    let taskNames = ["Shopping", "Sport", "Personal", "Event", "Work"]
    
    //manually create data
    init() {
        create()
    }
    
    //MARK: Helper
    
    //adds tasks to array
    func create() {
        for name in taskNames {
            let taskItem = Task(taskName: name)
            tasks.append(taskItem)
        }
    }
    
    //updates task in array
    func update(task: Task) {
        guard let index = tasks.index(of: task) else {
            return
        }
        var item = task
        tasks[index] = item
    }
    
}
