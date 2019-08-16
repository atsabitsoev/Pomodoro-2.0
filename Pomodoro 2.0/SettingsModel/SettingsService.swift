//
//  SettingsService.swift
//  Pomodoro 2.0
//
//  Created by Ацамаз Бицоев on 16/08/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import Foundation


class SettingsService {
    
    
    static let standard = SettingsService()
    
    
    // Получение значений настроек из памяти
    private init() {
        guard UserDefaults.standard.bool(forKey: "notFirstInit") else {
            return
        }
        self.workInterval = UserDefaults.standard.integer(forKey: "workInterval")
        self.relaxIntervalBig = UserDefaults.standard.integer(forKey: "relaxIntervalBig")
        self.relaxIntervalSmall = UserDefaults.standard.integer(forKey: "relaxIntervalSmall")
        self.bigRelaxIntervalEvery = UserDefaults.standard.integer(forKey: "bigIntervalEvery")
        self.themeName = ThemeName(rawValue: UserDefaults.standard.string(forKey: "themeName") ?? "") ?? ThemeName.redYellow
        self.notificationsOn = UserDefaults.standard.bool(forKey: "notificationsOn")
    }
    
    
    // Значения настроек
    var workInterval: Int = 25
    var relaxIntervalBig: Int = 20
    var relaxIntervalSmall: Int = 5
    var bigRelaxIntervalEvery: Int = 4
    
    var themeName: ThemeName = .redYellow
    var notificationsOn: Bool = true
    
    
    // Сохранение значений настроек в память
    func saveSettings() {
        UserDefaults.standard.set(workInterval, forKey: "workInterval")
        UserDefaults.standard.set(relaxIntervalBig, forKey: "relaxIntervalBig")
        UserDefaults.standard.set(relaxIntervalSmall, forKey: "relaxIntervalSmall")
        UserDefaults.standard.set(bigRelaxIntervalEvery, forKey: "bigIntervalEvery")
        UserDefaults.standard.set(themeName.rawValue, forKey: "themeName")
        UserDefaults.standard.set(notificationsOn, forKey: "notificationsOn")
    }
    
}
