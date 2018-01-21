//
//  EmployeeListEmployeeListPresenter.swift
//  TableViper
//
//  Created by Isa Aliev on 20/01/2018.
//  Copyright © 2018 Isa Aliev. All rights reserved.
//

class EmployeeListPresenter: EmployeeListModuleInput, EmployeeListViewOutput, EmployeeListInteractorOutput {

    weak var view: EmployeeListViewInput!
    var interactor: EmployeeListInteractorInput!
    var router: EmployeeListRouterInput!

    func viewDidLoad() {
        interactor.getEmployees()
    }
    
    func employeesDidReceive(_ employees: [Employee]) {
        var sections = [EmployeeSectionModel]()
        employees.forEach({
            let section = EmployeeSectionModel($0)
            section.delegate = self
            
            sections.append(section)
        })
        
        view.updateForSections(sections)
    }
}

extension EmployeeListPresenter: EmployeeSectionModelDelegate {
    func didTapText(withEmail email: String) {
        print("Will text to \(email)")
    }
    
    func didTapCall(withPhone phoneNumber: String) {
        print("Will call to \(phoneNumber)")
    }
}
