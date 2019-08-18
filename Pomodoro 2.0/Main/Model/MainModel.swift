//
//  MainModel.swift
//  Pomodoro 2.0
//
//  Created by Ацамаз Бицоев on 18/08/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import Foundation


class MainModel {
    
    private var controller: MainVC
    
    
    let settingsService = SettingsService.standard
    
    
    init(controller: MainVC) {
        self.controller = controller
    }
    
    
    func getCurrentTheme() -> Theme {
        let themeName = settingsService.themeName
        return ThemeService.getTheme(by: themeName)
    }
    
    
}
