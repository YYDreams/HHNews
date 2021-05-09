//
//  Global.swift
//  Cartoon
//
//  Created by flowerflower on 2021/5/9.
//

import Foundation

import UIKit
import Kingfisher
import SnapKit
import MJRefresh


let kScreenWidth = UIScreen.main.bounds.width
let kScreenHeight = UIScreen.main.bounds.height


//MARK: 应用默认颜色
extension UIColor {
    class var background: UIColor {
        return UIColor(r: 242, g: 242, b: 242)
    }
    
    class var theme: UIColor {
        return UIColor(r: 29, g: 221, b: 43)
    }
}



extension UICollectionView {
    func reloadData(animation: Bool = true) {
        if animation {
            reloadData()
        } else {
            UIView .performWithoutAnimation {
                reloadData()
            }
        }
    }
}

