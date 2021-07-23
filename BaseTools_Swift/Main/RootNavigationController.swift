//
//  RootNavigationController.swift
//  BaseTools_Swift
//
//  Created by 李雪阳 on 2021/7/23.
//

import UIKit

class RootNavigationController: UINavigationController, UIGestureRecognizerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.interactivePopGestureRecognizer?.delegate = self
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        if self.children.count > 0 {
            
            let button = UIButton(type: .custom)
            button.frame = CGRect(x: 0, y: 0, width: 70, height: 30)
            button.setImage(UIImage(named: "navi_back"), for: .normal)
            if #available(iOS 11.0, *) {
                button.contentHorizontalAlignment = .leading
            } else {
                button.contentHorizontalAlignment = .left
            }
            button.contentEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
            button.addTarget(self, action: #selector(backClick), for: .touchUpInside)
            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem.init(customView: button)
        }
        
        if self.viewControllers.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
        }
        
        super.pushViewController(viewController, animated: animated)
    }
    
    @objc func backClick() {
        self.popViewController(animated: true)
    }
    
    override var childForStatusBarStyle: UIViewController? {
        return self.topViewController
    }
    
    
    override func popToRootViewController(animated: Bool) -> [UIViewController]? {
        if self.viewControllers.count > 1 {
            self.topViewController?.hidesBottomBarWhenPushed = false
        }
        // self.viewControllers has two items here on iOS14  //https://developer.apple.com/forums/thread/660750 //ios 14popToRoot问题
        return super.popToRootViewController(animated: animated)
    }

}
