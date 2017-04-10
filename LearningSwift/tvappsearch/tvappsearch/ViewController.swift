//
//  ViewController.swift
//  tvappsearch
//
//  Created by Noah Marriott on 2/20/16.
//  Copyright © 2016 Noah Marriott. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITabBarControllerDelegate {
    
    var window: UIWindow?

    @IBOutlet weak var item: UITabBarItem!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var searchController: UISearchController = UISearchController()
        var containerVC: UISearchContainerViewController = UISearchContainerViewController(searchController: searchController)
        var nav: UINavigationController = UINavigationController(rootViewController: containerVC)
        tbc.viewControllers = [nav]
        window!.rootViewController = tbc
        window!.makeKeyAndVisible()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

