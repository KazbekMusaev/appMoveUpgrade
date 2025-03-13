//
//  UIBarButtonItem + AnalyticsExt.swift
//  UpcomingMovies
//
//  Created by KazbekMusaev on 12.03.2025.
//  Copyright © 2025 Alonso. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    func trackButtonClick() {
        self.action = #selector(buttonClicked)
    }
    
    @objc private func buttonClicked() {
        let eventName = "button_clicked"
        let parameters: [String: Any] = [
            "button_title": self.title ?? "No Title",
            "button_tag": self.tag
        ]
        FBAnalytics.logEvent(eventName, parameters: parameters)
    }
}
