//
//  BaseCollectionViewCell.swift
//  BaseTools_Swift
//
//  Created by 李雪阳 on 2021/7/23.
//

import UIKit

open class BaseCollectionViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .clear
        self.initUI()
    }
    
    open func initUI() {
        
    }
    
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
