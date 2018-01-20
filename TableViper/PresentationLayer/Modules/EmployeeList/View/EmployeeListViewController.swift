//
//  EmployeeListEmployeeListViewController.swift
//  TableViper
//
//  Created by Isa Aliev on 20/01/2018.
//  Copyright © 2018 Isa Aliev. All rights reserved.
//

import UIKit

class EmployeeListViewController: UITableViewController, EmployeeListViewInput {

    var output: EmployeeListViewOutput!

    // MARK: Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        output.viewIsReady()
    }


    // MARK: EmployeeListViewInput
    func setupInitialState() {
    }
}
