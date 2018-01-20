//
//  EmployeeListEmployeeListInitializer.swift
//  TableViper
//
//  Created by Isa Aliev on 20/01/2018.
//  Copyright © 2018 Isa Aliev. All rights reserved.
//

import UIKit

class EmployeeListModuleInitializer: NSObject {

    //Connect with object on storyboard
    @IBOutlet weak var employeelistViewController: EmployeeListViewController!

    override func awakeFromNib() {

        let configurator = EmployeeListModuleConfigurator()
        configurator.configureModuleForViewInput(viewInput: employeelistViewController)
    }

}
