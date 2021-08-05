//
//  MyTabBarControllerViewController.swift
//  RootViewControllerTest
//
//  Created by paslang on 05/08/21.
//

import UIKit

class MyTabBarControllerViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let firstViewController = ViewController()
        let secondViewController = AnotherViewController()
        
        
        firstViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        secondViewController.tabBarItem = UITabBarItem(title: "Menu Lain", image: .actions, tag: 1)
        
        viewControllers = [firstViewController, secondViewController]
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
