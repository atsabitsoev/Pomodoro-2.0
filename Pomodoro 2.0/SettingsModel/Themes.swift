//
//  Themes.swift
//  Pomodoro 2.0
//
//  Created by Ацамаз Бицоев on 16/08/2019.
//  Copyright © 2019 Ацамаз Бицоев. All rights reserved.
//

import Foundation
import UIKit


struct Theme {
    
    var color1: UIColor
    var color2: UIColor
}


class ThemeService {
    
    // Получить тему по ее имени
    static func getTheme(by themeName: ThemeName) -> Theme {
        
        switch themeName {
        case .redYellow:
            return Theme(color1: #colorLiteral(red: 0.9058823529, green: 0.2980392157, blue: 0.2352941176, alpha: 1), color2: #colorLiteral(red: 0.9450980392, green: 0.768627451, blue: 0.05882352941, alpha: 1))
        }
    }
}


// Имена тем
enum ThemeName: String {
    case redYellow = "redYellow"
}
