//
//  BaseTableViewCell.swift
//  BaseTools_Swift
//
//  Created by 李雪阳 on 2021/7/23.
//

import UIKit

open class BaseTableViewCell: UITableViewCell {

    open override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    open override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.selectionStyle = .none
        self.backgroundColor = .clear
        self.initUI()
    }
    
    open func initUI() {
        
    }
    
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
