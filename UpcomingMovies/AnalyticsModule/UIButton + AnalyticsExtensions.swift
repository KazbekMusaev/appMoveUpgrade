//
//  UIButton + AnalyticsExtensions.swift
//  UpcomingMovies
//
//  Created by KazbekMusaev on 12.03.2025.
//  Copyright © 2025 Alonso. All rights reserved.
//

import UIKit

extension UIButton {
    func trackButtonClick() {
        self.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
    }
    
    @objc private func buttonClicked() {
        let eventName = "button_clicked"
        let parameters: [String: Any] = [
            "button_title": self.titleLabel?.text ?? "No Title",
            "button_tag": self.tag
        ]
        FBAnalytics.logEvent(eventName, parameters: parameters)
    }
}
