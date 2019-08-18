//
//  MainVC.swift
//  Pomodoro 2.0
//
//  Created by Ацамаз Бицоев on 18/08/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    
    private var model: MainModel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        configure()
    }
    
    
    private func configure() {
        self.model = MainModel(controller: self)
    }

}
