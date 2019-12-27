//
//  RootViewController.swift
//  BaseTool_Swift
//
//  Created by Singularity on 2019/9/10.
//  Copyright © 2019 Singularity. All rights reserved.
//

import UIKit

class RootViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.delegate=self
        setupViewControls()
    }
    
    func setupViewControls() {
        
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


extension RootViewController:UITabBarControllerDelegate {
    
}
