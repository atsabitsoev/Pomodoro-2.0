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
    
    
    private var theme: Theme!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configure()
    }
    
    override func viewWillLayoutSubviews() {
        configurePomodoroTimerView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        pomodoroTimerVeiw.configure(configuration: PomodoroTimerConfiguration(workSeconds: 25,
                                                                              smallRelaxSeconds: 5,
                                                                              bigRelaxSeconds: 20,
                                                                              bigRelaxEvery: 4,
                                                                              currentSeconds: 0,
                                                                              currentCircle: 0,
                                                                              totalCircles: 10,
                                                                              currentState: .work))
        pomodoroTimerVeiw.startTimer()
    }
    
    
    private func configure() {
        self.model = MainModel(controller: self)
    }
    
    
    private func configurePomodoroTimerView() {
        let theme = model.getCurrentTheme()
        let mainColor = theme.mainColor
        let darkColor = theme.mainColorDark
        let backgroundColor = theme.backgroundColor
        let shadowColor = theme.middleColor
        pomodoroTimerVeiw.mainColor = mainColor
        pomodoroTimerVeiw.additionalColor = darkColor
        pomodoroTimerVeiw.indicatorColor = backgroundColor
        pomodoroTimerVeiw.shadowColor = shadowColor
    }

}
