//
//  Task.swift
//  Onboarding
//
//  Created by Victor  on 5/21/19.
//  Copyright © 2019 com.Victor. All rights reserved.
//

import Foundation

struct Task: Equatable, Codable {
    var taskName: String
    var imageData: Data?
    var taskDetail: String
    var numberOfTasks: Int
    
    init(taskName: String) {
        self.taskName = taskName
        self.taskDetail = "Tasks"
        self.numberOfTasks = 0
    }
    
}
