//
//  TranslateViewModel.swift
//  UpcomingMovies
//
//  Created by KazbekMusaev on 12.03.2025.
//  Copyright © 2025 Alonso. All rights reserved.
//

import Combine

final class TranslateViewModel: ObservableObject {
    deinit {
        print("destroi TranslateViewModel")
    }
    @Published var isPresent: Bool = true {
        didSet {
            if isPresent == false {
                delegate?.dissmis()
            }
        }
    }
    var originalText: String = ""
    weak var delegate: TranslateViewProtocol?
}
