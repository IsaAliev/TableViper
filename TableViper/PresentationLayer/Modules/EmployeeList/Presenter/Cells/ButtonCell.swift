//
//  ButtonCell.swift
//  TableViper
//
//  Created by Isa Aliev on 21.01.18.
//  Copyright © 2018 IA. All rights reserved.
//

import UIKit

class ButtonCell: EmployeeBaseCell {
    @IBOutlet weak var button: UIButton!
    
    override func layoutSubviews() {
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.borderWidth = 1.0
    }
    
    override func updateViews() {
        guard  let model = model as? ButtonCellModel else {
            return
        }
        
        button.setTitle(model.title, for: .normal)
    }
    
    @IBAction func buttonAction(_ sender: UIButton) {
        guard  let model = model as? ButtonCellModel else {
            return
        }
        
        model.action?()
    }
}
