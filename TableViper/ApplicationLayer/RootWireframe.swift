//
//  RootWireframe.swift
//  TableViper
//
//  Created by Isa Aliev on 20.01.18.
//  Copyright © 2018 IA. All rights reserved.
//

import UIKit

class RootWireframe {
    
    class func setupWith(_ window: UIWindow) {
        let employeeList = UIStoryboard(name: "EmployeeList", bundle: nil).instantiateViewController(withIdentifier: "EmployeeListViewController")
        let navigationController = UINavigationController(rootViewController: employeeList)
        
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
    
}
