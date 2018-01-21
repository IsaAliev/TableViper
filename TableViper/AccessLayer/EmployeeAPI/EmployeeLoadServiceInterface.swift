//
//  EmployeeLoadServiceInterface.swift
//  TableViper
//
//  Created by Isa Aliev on 20.01.18.
//  Copyright © 2018 IA. All rights reserved.
//

import Foundation

protocol EmployeeLoadServiceInterface {
    func loadEmployees(completion: @escaping ([Employee]) -> ())
}
