//
//  AppViewController.swift
//  AppStore
//
//  Created by yeongwoocho on 2022/06/08.
//

import UIKit

class AppViewController: UIViewController {

    lazy var profileButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "person.crop.circle"), for: .normal)
        
        let pointSize: CGFloat = 30
        let imageConfig = UIImage.SymbolConfiguration(pointSize: pointSize)
        var config = UIButton.Configuration.plain()
        if #available(iOS 15.0, *) {
            config.preferredSymbolConfigurationForImage = imageConfig
            button.configuration = config
        }
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureView()
        configureNavigationBar()
        configureSubViews()
        configureConstraints()
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
    
    private func configureSubViews() {
        guard let view = self.view else { return }
        
        view.addSubview(profileButton)
    }
    
    private func configureConstraints() {
        guard let view = self.view else { return }
        
        profileButton.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraints([
            profileButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 90),
            profileButton.trailingAnchor.constraint(equalTo: view.trailingAnchor,
                                                    constant: -10),
        ])
    }
}
