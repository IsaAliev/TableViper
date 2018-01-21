//
//  EmployeeListEmployeeListInteractor.swift
//  TableViper
//
//  Created by Isa Aliev on 20/01/2018.
//  Copyright © 2018 Isa Aliev. All rights reserved.
//

class EmployeeListInteractor: EmployeeListInteractorInput {
    weak var output: EmployeeListInteractorOutput!
    
    var employeeLoadService: EmployeeLoadServiceInterface!
    
    func getEmployees() {
        employeeLoadService.loadEmployees { [weak self] (employees) in
            self?.output.employeesDidReceive(employees)
        }
    }
}
