//
//  ViewController.swift
//  MovieTheater
//
//  Created by Anita Stashevskaya on 12.03.2024.
//

import UIKit

final class TabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupTabs()
    }
    
    private func setupTabs() {
        let movieVC = MovieViewController()
        let favouritesVC = FavouritesViewController()
        let settingsVC = SettingsViewController()
        
        movieVC.navigationItem.largeTitleDisplayMode = .automatic
        favouritesVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        
        let nav1 = UINavigationController(rootViewController: movieVC)
        let nav2 = UINavigationController(rootViewController: favouritesVC)
        let nav3 = UINavigationController(rootViewController: settingsVC)
        
        nav1.tabBarItem = UITabBarItem(title: "Movie",
                                       image: UIImage(systemName: "movieclapper"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Favourites",
                                       image: UIImage(systemName: "star.fill"), tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Settings",
                                       image: UIImage(systemName: "gear"), tag: 3)
        
        setViewControllers([nav1, nav2, nav3], animated: true)
    }
}

