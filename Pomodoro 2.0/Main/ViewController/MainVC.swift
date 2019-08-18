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
    
    
    @IBOutlet weak var pomodoroTimerVeiw: PomodoroTimerView!
    @IBOutlet weak var butChangeTask: GradientTextButton!
    
    
    private var theme: Theme!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configure()
    }
    
    override func viewWillLayoutSubviews() {
        theme = model.getCurrentTheme()
        configurePomodoroTimerView()
        configureButChangeTask()
    }
    
    override func viewDidAppear(_ animated: Bool) {
    }
    
    
    private func configure() {
        self.model = MainModel(controller: self)
    }
    
    
    private func configurePomodoroTimerView() {
        let mainColor = theme.mainColor
        let darkColor = theme.mainColorDark
        let backgroundColor = theme.backgroundColor
        let shadowColor = theme.middleColor
        pomodoroTimerVeiw.mainColor = mainColor
        pomodoroTimerVeiw.additionalColor = darkColor
        pomodoroTimerVeiw.indicatorColor = backgroundColor
        pomodoroTimerVeiw.shadowColor = shadowColor
    }
    
    private func configureButChangeTask() {
        butChangeTask.gradientColors = [theme.mainColor, theme.additionalColor]
    }

}
