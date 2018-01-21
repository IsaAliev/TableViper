//
//  EmployeeWorkplaceCell.swift
//  TableViper
//
//  Created by Isa Aliev on 21.01.18.
//  Copyright © 2018 IA. All rights reserved.
//

import UIKit

class EmployeeWorkplaceCell: EmployeeBaseCell {
    @IBOutlet weak var workplaceLabel: UILabel!
    
    override func updateViews() {
        guard let model = model as? EmployeeWorkplaceCellModel else {
            return
        }
        
        workplaceLabel.text = model.workplace
    }
}
