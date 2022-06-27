//
//  AppViewController.swift
//  AppStore
//
//  Created by yeongwoocho on 2022/06/08.
//

import UIKit

class AppViewController: UIViewController {
    lazy var profileImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(systemName: "person.crop.circle"))
        return imageView
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
        
        view.addSubview(profileImageView)
    }
    
    private func configureConstraints() {
        guard let view = self.view else { return }
        profileImageView.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraints([
            profileImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 90),
            profileImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor,
                                                    constant: -15),
            profileImageView.widthAnchor.constraint(equalToConstant: 40),
            profileImageView.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
}
