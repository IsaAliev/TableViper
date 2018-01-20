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

    func viewIsReady() {

    }
}
