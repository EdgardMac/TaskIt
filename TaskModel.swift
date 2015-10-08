//
//  TaskModel.swift
//  TaskIt
//
//  Created by Edgard Maciel on 10/6/15.
//  Copyright © 2015 Edgard Maciel. All rights reserved.
//

import Foundation
import CoreData


@objc(TaskModel)
class TaskModel: NSManagedObject {

// Insert code here to add functionality to your managed object subclass
    
    var completed: NSNumber
    var date: NSDate?
    var subtask: String?
    var task: String?

}
