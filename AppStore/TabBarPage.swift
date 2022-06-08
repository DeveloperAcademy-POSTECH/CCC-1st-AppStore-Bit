//
//  TabBarPage.swift
//  AppStore
//
//  Created by yeongwoocho on 2022/06/08.
//

import UIKit

enum TabBarPage {
    case today
    case game
    case app
    case arcade
    case search

    init?(index: Int) {
        switch index {
        case 0:
            self = .today
        case 1:
            self = .game
        case 2:
            self = .app
        case 3:
            self = .arcade
        case 4:
            self = .search
        default:
            return nil
        }
    }
    
    func pageTitleValue() -> String {
        switch self {
        
        case .today:
            return "투데이"
        case .game:
            return "게임"
        case .app:
            return "앱"
        case .arcade:
            return "Arcade"
        case .search:
            return "검색"
        }
    }

    func pageImage() -> UIImage? {
        switch self {
        case .today:
            return UIImage.init(systemName: "doc.text.image")
        case .game:
            return UIImage.init(systemName: "")
        case .app:
            return UIImage.init(systemName: "square.stack.3d.up.fill")
        case .arcade:
            return UIImage.init(systemName: "")
        case .search:
            return UIImage.init(systemName: "magnifyingglass")
        }
    }
    
    func pageOrderNumber() -> Int {
        switch self {
        case .today:
            return 0
        case .game:
            return 1
        case .app:
            return 2
        case .arcade:
            return 3
        case .search:
            return 4
        }
    }
    
    func pageViewController() -> UIViewController {
        switch self {
        case .today:
            return ViewController()
        case .game:
            return ViewController()
        case .app:
            return ViewController()
        case .arcade:
            return ViewController()
        case .search:
            return ViewController()
        }
    }
}
