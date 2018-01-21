//
//  EmployeeService.swift
//  TableViper
//
//  Created by Isa Aliev on 20.01.18.
//  Copyright © 2018 IA. All rights reserved.
//

import Foundation

class EmployeeService: EmployeeLoadServiceInterface {
    func loadEmployees(completion: @escaping ([Employee]) -> ()) {
        let names = ["Isa", "Jack", "Peter"]
        let specializations = ["iOS-Developer", "Android-Developer", "Backend Developer"]
        let emails = ["isaaliev12@gmail.com", "jack@some.com", "peterFly@sky.com"]
        let phones = ["+7 (926) 000-00-76", "+7 (999) 999-99-99", "+7 (909) 000-00-00"]
        let workplaces = [["Good one", "Better one", "The best"],
                          ["Fine thing"],
                          ["Dragons", "Empty files"]]
        
        var employees = [Employee]()
        
        for i in 0..<3 {
            let imageURL = Bundle.main.url(forResource: "Employee\(i)", withExtension: "jpg")
            employees.append(Employee(name: names[i],
                                      specialization: specializations[i],
                                      imageURL: imageURL,
                                      workplaces: workplaces[i],
                                      email: emails[i],
                                      phone: phones[i]))
        }
        
        completion(employees)
    }
}
