//
//  TabBarController.swift
//  AppStore
//
//  Created by yeongwoocho on 2022/06/08.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        configureTabBar()
        configureViewControllers()
    }
    
    private func configureTabBar() {
        tabBar.backgroundColor = .darkGray
        tabBar.tintColor = .systemBlue
        tabBar.unselectedItemTintColor = .systemGray
    }
    
    private func getNavigationController(_ page: TabBarPage) -> UINavigationController {
        let navController = UINavigationController(rootViewController: page.pageViewController())
        navController.tabBarItem = UITabBarItem(title: page.pageTitleValue(),
                                                image: page.pageImage(),
                                                tag: page.pageOrderNumber())
        return navController
    }
    
    private func configureViewControllers() {
        let pages: [TabBarPage] = [.today, .game, .app, .arcade, .search]
            .sorted(by: { $0.pageOrderNumber() < $1.pageOrderNumber() })
        let controllers: [UINavigationController] = pages.map({ getNavigationController($0) })
        self.viewControllers = controllers
        self.selectedIndex = TabBarPage.app.pageOrderNumber()
    }
}
