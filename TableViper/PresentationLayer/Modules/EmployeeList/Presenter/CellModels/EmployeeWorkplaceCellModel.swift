//
//  EmployeeWorkplaceCellModel.swift
//  TableViper
//
//  Created by Isa Aliev on 21.01.18.
//  Copyright © 2018 IA. All rights reserved.
//

import Foundation

class EmployeeWorkplaceCellModel: EmployeeBaseCellModel {
    override var cellIdentifier: String {
        return "EmployeeWorkplaceCell"
    }
    
    var workplace: String
    
    init(_ workplace: String) {
        self.workplace = workplace
    }
}
