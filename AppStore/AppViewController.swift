//
//  AppViewController.swift
//  AppStore
//
//  Created by yeongwoocho on 2022/06/08.
//

import UIKit

class AppViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        configureView()
    }
    
    private func configureView() {
        guard let view = self.view else { return }

        view.backgroundColor = .systemBackground
    }
}
