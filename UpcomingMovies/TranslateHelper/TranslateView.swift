//
//  TranslateView.swift
//  UpcomingMovies
//
//  Created by KazbekMusaev on 12.03.2025.
//  Copyright © 2025 Alonso. All rights reserved.
//

import UIKit
import SwiftUI
import Translation

protocol TranslateViewProtocol: AnyObject {
    func dissmis()
}

@available(iOS 17.4, *)
final class TranslateView: UIViewController, TranslateViewProtocol {
    func dissmis() {
        dismiss(animated: true)
    }
    
    init(tranlatedText: String) {
        self.tranlatedText = tranlatedText
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let tranlatedText: String
    
    deinit {
        print("destroi TranslateView")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let viewModel = TranslateViewModel()
        viewModel.originalText = tranlatedText
        viewModel.delegate = self
        let swiftUIView = TranslatePresentView(viewModel: viewModel)
        let hostingController = UIHostingController(rootView: swiftUIView)
        addChild(hostingController)
        view.addSubview(hostingController.view)
        hostingController.view.backgroundColor = .clear
        // Настраиваем размер и позицию SwiftUI View
        hostingController.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            hostingController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            hostingController.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            hostingController.view.topAnchor.constraint(equalTo: view.topAnchor),
            hostingController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        hostingController.didMove(toParent: self)
    }

}
//MARK: - Структура для перевода
@available(iOS 17.4, *)
struct TranslatePresentView: View {
    @ObservedObject var viewModel = TranslateViewModel()
    var body: some View {
        VStack {
        }
        .translationPresentation(isPresented: $viewModel.isPresent,
                                 text: viewModel.originalText)
        .navigationTitle("Translate")
    }
}
