//
//  FBAnalytics.swift
//  UpcomingMovies
//
//  Created by KazbekMusaev on 12.03.2025.
//  Copyright © 2025 Alonso. All rights reserved.
//

import Foundation
import FirebaseAnalytics

struct FBAnalytics {
    static func logEvent(_ name: String, parameters: [String: Any]?) {
        Analytics.logEvent(name, parameters: parameters)
        print("name == \(name), params = \(parameters)")
    }
}
