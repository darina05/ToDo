//
//  NotificationModel.swift
//  ToDoList
//
//  Created by Radu Ursache on 28/02/2019.
//  Copyright © 2019 Radu Ursache. All rights reserved.
//

import UIKit
import RealmSwift
import IceCream

class NotificationModel: Object {
    @objc dynamic var identifier = NSUUID().uuidString
    @objc dynamic var text = ""
    @objc dynamic var date = NSDate.init()
    @objc dynamic var isDeleted = false
//    @objc dynamic var task: TaskModel?
    @objc dynamic var taskId = ""
    
    override class func primaryKey() -> String? {
        return "identifier"
    }
    
    convenience init(text: String, date: Date) {
        self.init()
        
        self.text = text
        self.date = date as NSDate
    }
    
    func setTask(task: TaskModel) {
//        self.task = task
        self.taskId = task.id
    }
}

extension NotificationModel: CKRecordConvertible {
    
}

extension NotificationModel: CKRecordRecoverable {
    
}