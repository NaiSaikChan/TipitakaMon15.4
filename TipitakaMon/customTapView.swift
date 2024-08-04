//
//  customTapView.swift
//  TipitakaMon
//
//  Created by Silarcara on 31/7/24.
//

import SwiftUI

struct TabBarControllerWrapper: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UITabBarController {
        let tabBarController = UITabBarController()
        
        let homeView = UIHostingController(rootView: vinyanaView())
        homeView.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house.fill"), tag: 0)
        
        let searchView = UIHostingController(rootView: sutaView())
        searchView.tabBarItem = UITabBarItem(title: "Search", image: UIImage(systemName: "magnifyingglass"), tag: 1)
        
        let notificationsView = UIHostingController(rootView: Abhidhamma())
        notificationsView.tabBarItem = UITabBarItem(title: "Notifications", image: UIImage(systemName: "bell.fill"), tag: 2)
        
        let profileView = UIHostingController(rootView: infoView())
        profileView.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person.fill"), tag: 3)
        
        tabBarController.viewControllers = [homeView, searchView, notificationsView, profileView]
        
        return tabBarController
    }
    
    func updateUIViewController(_ uiViewController: UITabBarController, context: Context) {
        // Nothing to update here
    }
}
