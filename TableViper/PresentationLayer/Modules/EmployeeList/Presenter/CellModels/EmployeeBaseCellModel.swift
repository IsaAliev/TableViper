//
//  EmployeeBaseCellModel.swift
//  TableViper
//
//  Created by Isa Aliev on 21.01.18.
//  Copyright © 2018 IA. All rights reserved.
//

class EmployeeBaseCellModel: CellIdentifiable {
    let automaticHeight: Float = -1.0
    
    var cellIdentifier: String {
        return ""
    }
    
    var cellHeight: Float {
        return automaticHeight
    }
}
