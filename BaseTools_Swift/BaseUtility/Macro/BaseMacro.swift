//
//  BaseMacro.swift
//  BaseTools_Swift
//
//  Created by 李雪阳 on 2021/7/23.
//

import Foundation
import UIKit



//MARK: 常用尺寸宏
/** 屏幕尺寸 */
let SCREEN_WIDTH = UIScreen.main.bounds.size.width
let SCREEN_HEIGHT = UIScreen.main.bounds.size.height

/** Window使用  以APPWINDOW为主*/
let APP_WINDOW = UIApplication.shared.delegate?.window
let KEY_WINDOW = UIApplication.shared.keyWindow

/** 导航栏高度 */
let NAVI_HEIGHT:CGFloat = 44
/** 状态栏高度 */
let STATUS_HEIGHT = UIApplication.shared.statusBarFrame.size.height
/** 导航栏+状态栏总高 */
let STATUS_NAVI_HEIGHT = NAVI_HEIGHT + STATUS_HEIGHT
/** 页面除过导航栏高度 */
let SCREEN_WINDOW_HEIGHT = SCREEN_HEIGHT - (STATUS_HEIGHT + 44)
/** iPhone X等异形屏下HOME按键高度 */
let IPHONEX_BOTTOM = UIApplication.shared.statusBarFrame.size.height > 20 ? 34 : 0
/** iphoneX等异形屏下tabbar高度 */
let TABBAR_HEIGHT = UIApplication.shared.statusBarFrame.size.height > 20 ? 83 : 49

/** 系统tabbar高度 */
func SYSTEM_TABBAR_HEIGHT(viewController:UIViewController) -> CGFloat? {
    return viewController.tabBarController?.tabBar.bounds.size.height
}
