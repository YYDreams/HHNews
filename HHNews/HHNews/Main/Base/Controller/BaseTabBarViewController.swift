//
//  BaseTabBarViewController.swift
//  Cartoon
//
//  Copyright © 2021 flowerflower. All rights reserved.
//

import UIKit

class BaseTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.tintColor = UIColor.red
        tabBar.isTranslucent = false
        setupControllers()
    }
    
    func setupControllers(){
        let vc = ["HomeController","VideoController","NewsController","MineViewController"]
        let normalImages = ["home_tabbar_32x32_","video_tabbar_32x32_","huoshan_tabbar_32x32_","mine_tabbar_32x32_"]
        let selectImages = ["home_tabbar_press_32x32_","video_tabbar_press_32x32_","mine_tabbar_press_32x32_","mine_tabbar_press_32x32_"]
        let titles = ["首页","视频","头条","我的"]
        
        for i in 0..<4 {
            let clsName = Bundle.main.infoDictionary!["CFBundleExecutable"] as? String
            //拼接参数字符串 项目名+.+需要加载的类的名称 如果不拼接会奔溃
            let vcView = NSClassFromString(clsName! + "." + vc[i]) as! BaseUIViewController.Type
            let vc = vcView.init()
            vc.title = titles[i]
            let image = UIImage(named: normalImages[i])
            let selectedImage = UIImage(named: selectImages[i])
            vc.tabBarItem = UITabBarItem(title: nil, image: image?.withRenderingMode(.alwaysOriginal), selectedImage: selectedImage?.withRenderingMode(.alwaysOriginal))
            if UIDevice.current.userInterfaceIdiom == .phone {
                vc.tabBarItem.imageInsets = UIEdgeInsets(top: 6, left: 0, bottom: -6, right: 0)
            }
            addChild(BaseNavViewController(rootViewController: vc))
            
        }
        selectedIndex = 3

        
    }

}
