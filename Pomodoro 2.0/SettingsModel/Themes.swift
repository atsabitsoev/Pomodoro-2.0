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
    
    var mainColor: UIColor
    var mainColorDark: UIColor
    var additionalColor: UIColor
    var middleColor: UIColor
    var backgroundColor: UIColor
}


class ThemeService {
    
    // Получить тему по ее имени
    static func getTheme(by themeName: ThemeName) -> Theme {
        
        switch themeName {
        case .redYellow:
            return Theme(mainColor: #colorLiteral(red: 0.9058823529, green: 0.2980392157, blue: 0.2352941176, alpha: 1), mainColorDark: #colorLiteral(red: 0.8549019608, green: 0.2705882353, blue: 0.2117647059, alpha: 1), additionalColor: #colorLiteral(red: 0.9450980392, green: 0.768627451, blue: 0.05882352941, alpha: 1), middleColor: #colorLiteral(red: 0.9215686275, green: 0.4823529412, blue: 0.1647058824, alpha: 1), backgroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
        }
    }
}


// Имена тем
enum ThemeName: String {
    case redYellow = "redYellow"
}
