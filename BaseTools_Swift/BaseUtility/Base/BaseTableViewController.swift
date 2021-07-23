//
//  BaseTableViewController.swift
//  BaseTools_Swift
//
//  Created by 李雪阳 on 2021/7/23.
//

import UIKit

open class BaseTableViewController: BaseViewController {
    
    open var tableView : UITableView!

    open override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    func initTableView() {
        self.tableView.removeFromSuperview()
        
        
    }

}
