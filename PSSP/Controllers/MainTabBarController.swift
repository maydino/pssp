//
//  MainTabBarController.swift
//  PSSP
//
//  Created by Mutlu Aydin on 8/11/22.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        UITabBar.appearance().tintColor = .systemRed
        UITabBar.appearance().unselectedItemTintColor = .systemBackground
        UITabBar.appearance().backgroundColor = .blueColor
        
        setViewControllers([createHomeNavigationController(),createStatsNavigationController()], animated: true)
    }
    
    func createHomeNavigationController() -> UINavigationController {
        let homeVC = HomeViewController()
        homeVC.title = "Home"
        homeVC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(named: "home"), tag: 0)
        return UINavigationController(rootViewController: homeVC)
    }
    
    func createStatsNavigationController() -> UINavigationController {
        let statsVC = StatsViewController()
        statsVC.title = "Stats"
        statsVC.tabBarItem = UITabBarItem(title: "Stats", image: UIImage(named: "stats"), tag: 1)
        return UINavigationController(rootViewController: statsVC)
    }


}
