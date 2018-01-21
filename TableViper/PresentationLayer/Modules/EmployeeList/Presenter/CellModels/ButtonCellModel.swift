//
//  ButtonCellModel.swift
//  TableViper
//
//  Created by Isa Aliev on 21.01.18.
//  Copyright © 2018 IA. All rights reserved.
//

import Foundation

class ButtonCellModel: EmployeeBaseCellModel {
    typealias ActionHandler = () -> ()
    
    override var cellIdentifier: String {
        return "ButtonCell"
    }
    
    var action: ActionHandler?
    var title: String
    
    init(title: String, action: ActionHandler? = nil) {
        self.title = title
        self.action = action
    }
}
