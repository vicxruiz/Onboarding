//
//  TaskController.swift
//  Onboarding
//
//  Created by Victor  on 5/21/19.
//  Copyright © 2019 com.Victor. All rights reserved.
//

import Foundation

class TaskController {
    
    var tasks: [Task] = []
    
    let taskNames = ["event", "bag", "soccer-ball", "teacher", "wish-list", "working"]
    
    init() {
        create()
    }
    
    func create() {
        for name in taskNames {
            let taskItem = Task(taskName: name)
            tasks.append(taskItem)
        }
    }
    
    func update(task: Task) {
        guard let index = tasks.index(of: task) else {
            return
        }
        var item = task
        tasks[index] = item
    }
}
