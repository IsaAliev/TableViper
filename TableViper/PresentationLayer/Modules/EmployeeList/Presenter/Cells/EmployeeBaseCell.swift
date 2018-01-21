//
//  EmployeeBaseCell.swift
//  TableViper
//
//  Created by Isa Aliev on 21.01.18.
//  Copyright © 2018 IA. All rights reserved.
//

import UIKit

class EmployeeBaseCell: UITableViewCell, ModelRepresentable {
    var model: CellIdentifiable? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        
    }
}
