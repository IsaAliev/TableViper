//
//  EmployeeSectionModel.swift
//  TableViper
//
//  Created by Isa Aliev on 21.01.18.
//  Copyright © 2018 IA. All rights reserved.
//

import Foundation

protocol EmployeeSectionModelDelegate: class {
    func didTapCall(withPhone phoneNumber: String)
    func didTapText(withEmail email: String)
}

class EmployeeSectionModel: SectionRowsRepresentable {
    var rows: [CellIdentifiable]
    
    weak var delegate: EmployeeSectionModelDelegate?
    
    init(_ employee: Employee) {
        rows = [CellIdentifiable]()
        
        rows.append(EmployeeBaseInfoCellModel(employee))
        rows.append(contentsOf: employee.workplaces.map({ EmployeeWorkplaceCellModel($0) }))
        
        let callButtonCellModel = ButtonCellModel(title: "Позвонить") { [weak self] in
            self?.delegate?.didTapCall(withPhone: employee.phone)
        }
        
        let textButtonCellModel = ButtonCellModel(title: "Написать письмо") { [weak self] in
            self?.delegate?.didTapText(withEmail: employee.email)
        }
        
        rows.append(contentsOf: [callButtonCellModel, textButtonCellModel])
    }
}
