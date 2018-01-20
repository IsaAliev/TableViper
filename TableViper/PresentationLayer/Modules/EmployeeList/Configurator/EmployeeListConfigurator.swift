//
//  EmployeeListEmployeeListConfigurator.swift
//  TableViper
//
//  Created by Isa Aliev on 20/01/2018.
//  Copyright © 2018 Isa Aliev. All rights reserved.
//

import UIKit

class EmployeeListModuleConfigurator {

    func configureModuleForViewInput<UIViewController>(viewInput: UIViewController) {

        if let viewController = viewInput as? EmployeeListViewController {
            configure(viewController: viewController)
        }
    }

    private func configure(viewController: EmployeeListViewController) {

        let router = EmployeeListRouter()

        let presenter = EmployeeListPresenter()
        presenter.view = viewController
        presenter.router = router

        let interactor = EmployeeListInteractor()
        interactor.output = presenter

        presenter.interactor = interactor
        viewController.output = presenter
    }

}
