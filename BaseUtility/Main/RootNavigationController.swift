//
//  RootNavigationController.swift
//  BaseTool_Swift
//
//  Created by Singularity on 2019/9/10.
//  Copyright © 2019 Singularity. All rights reserved.
//

import UIKit

class RootNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.interactivePopGestureRecognizer?.delegate=self
        
    }
    
    
    override var childForStatusBarStyle: UIViewController? {
        return self.topViewController
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


extension RootNavigationController:UIGestureRecognizerDelegate {
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if self.children.count > 0 {
            let button = UIButton(frame: CGRect(x: 0, y: 0, width: 70, height: 30))
            button.setImage(UIImage(named: "navi_returnBack"), for: .normal)
            button.contentEdgeInsets=UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
            button.addTarget(self, action: #selector(RootNavigationController.back), for: .touchUpInside)
            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        }
        
        if self.viewControllers.count > 0 {
            viewController.hidesBottomBarWhenPushed = true
        }
        
        super.pushViewController(viewController, animated: true)
    }
    
    @objc func back() {
        self.popViewController(animated: true)
    }
}
