//
//  EmployeeBaseInfoCellModel.swift
//  TableViper
//
//  Created by Isa Aliev on 21.01.18.
//  Copyright © 2018 IA. All rights reserved.
//

import Foundation

class EmployeeBaseInfoCellModel: EmployeeBaseCellModel {
    override var cellIdentifier: String {
        return "EmployeeBaseInfoCell"
    }
    
    var name: String
    var specialization: String
    var imageURL: URL?
    
    init(_ employee: Employee) {
        name = employee.name
        specialization = employee.specialization
        imageURL = employee.imageURL
    }
}
