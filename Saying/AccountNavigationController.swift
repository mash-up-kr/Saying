//
//  AccountNavigationController.swift
//  Saying
//
//  Created by snow on 2017. 7. 8..
//  Copyright © 2017년 seolheelee. All rights reserved.
//

import Foundation

class AccountNavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBar.isTranslucent = true
        navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationBar.shadowImage = UIImage()
        navigationBar.backgroundColor = .clear
    }
    
}
