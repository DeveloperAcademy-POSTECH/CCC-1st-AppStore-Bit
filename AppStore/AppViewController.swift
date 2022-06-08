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
        configureNavigationBar()
    }
    
    private func configureView() {
        guard let view = self.view else { return }

        view.backgroundColor = .systemBackground
    }
    
    private func configureNavigationBar() {
        guard let navController = self.navigationController else { return }
        
        navController.navigationBar.prefersLargeTitles = true
        self.navigationItem.title = TabBarPage.app.pageTitleValue()
    }
}
