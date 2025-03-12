//
//  AnalyticsNames.swift
//  UpcomingMovies
//
//  Created by KazbekMusaev on 12.03.2025.
//  Copyright © 2025 Alonso. All rights reserved.
//

import Foundation

enum AnalyticsNames: String {
    case fetchData = "fetch_data"
    case failesToFetchData = "failes_to_fetch_data"
    case appFistLoad = "app_fist_load"
}

enum AnalyticsParameters: String {
    case succesLoad
    case timeToLoad
    case error
    case requestName
    case parameterScreenName
    case parameterScreenClass
}
