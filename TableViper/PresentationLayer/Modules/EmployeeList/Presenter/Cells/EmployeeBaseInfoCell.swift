//
//  EmployeeBaseInfoCell.swift
//  TableViper
//
//  Created by Isa Aliev on 21.01.18.
//  Copyright © 2018 IA. All rights reserved.
//

import UIKit

class EmployeeBaseInfoCell: EmployeeBaseCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var specializationLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func updateViews() {
        guard let model = model as? EmployeeBaseInfoCellModel else {
            return
        }
        
        nameLabel.text = model.name
        specializationLabel.text = model.specialization
        if let imagePath = model.imageURL?.path {
            photoImageView.image = UIImage(contentsOfFile: imagePath)
        }
    }
}
