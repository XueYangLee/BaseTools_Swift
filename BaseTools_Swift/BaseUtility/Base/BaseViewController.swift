//
//  BaseViewController.swift
//  BaseTools_Swift
//
//  Created by 李雪阳 on 2021/7/23.
//

import UIKit

open class BaseViewController: UIViewController {

    open override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    open override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

}
