//
//  RootViewController.swift
//  BaseTools_Swift
//
//  Created by 李雪阳 on 2021/7/23.
//

import UIKit

class RootViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setupViewControls()
    }
    
    func setupViewControls() {
        let home = HomeViewController()
        self.setupViewController(viewController: home, title: "第一页", image: "tabunselect1", selectedImage: "tabselect1")
        
        let mine = MineViewController()
        self.setupViewController(viewController: mine, title: "第二页", image: "tabunselect2", selectedImage: "tabselect2")
    }
    

    func setupViewController(viewController : UIViewController, title : String, image : String, selectedImage : String) {
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = UIImage(named: image)?.withRenderingMode(.alwaysOriginal)
        viewController.tabBarItem.selectedImage = UIImage(named: selectedImage)?.withRenderingMode(.alwaysOriginal)
        
        let navi = RootNavigationController(rootViewController: viewController)
        self.addChild(navi)
    }

}
