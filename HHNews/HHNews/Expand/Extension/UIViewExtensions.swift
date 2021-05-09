//
//  UIViewExtensions.swift
//  Cartoon
//
//  Copyright © 2021 flowerflower. All rights reserved.
//

import UIKit

//Color
extension UIColor {
    convenience init(r:UInt32 ,g:UInt32 , b:UInt32 , a:CGFloat = 1.0) {
        self.init(red: CGFloat(r) / 255.0,
                  green: CGFloat(g) / 255.0,
                  blue: CGFloat(b) / 255.0,
                  alpha: a)
    }
    
    class var random: UIColor {
        return UIColor(r: arc4random_uniform(256),
                       g: arc4random_uniform(256),
                       b: arc4random_uniform(256))
    }
    
    func image() -> UIImage {
        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context!.setFillColor(self.cgColor)
        context!.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
    
    class func hex(hexString: String) -> UIColor {
        var cString: String = hexString.trimmingCharacters(in: .whitespacesAndNewlines)
        if cString.count < 6 { return UIColor.black }
        
        let index = cString.index(cString.endIndex, offsetBy: -6)
        let subString = cString[index...]
        if cString.hasPrefix("0X") { cString = String(subString) }
        if cString.hasPrefix("#") { cString = String(subString) }
        
        if cString.count != 6 { return UIColor.black }
        
        var range: NSRange = NSMakeRange(0, 2)
        let rString = (cString as NSString).substring(with: range)
        range.location = 2
        let gString = (cString as NSString).substring(with: range)
        range.location = 4
        let bString = (cString as NSString).substring(with: range)
        
        var r: UInt32 = 0x0
        var g: UInt32 = 0x0
        var b: UInt32 = 0x0
        
        Scanner(string: rString).scanHexInt32(&r)
        Scanner(string: gString).scanHexInt32(&g)
        Scanner(string: bString).scanHexInt32(&b)
        
        return UIColor(r: r, g: g, b: b)
    }
}


//UIBarButtonItem
extension UIBarButtonItem {
    convenience init(title: String?,
                     titleColor: UIColor = .white,
                     titleFont: UIFont = UIFont.systemFont(ofSize: 15),
                     titleEdgeInsets: UIEdgeInsets = .zero,
                     target: Any?,
                     action: Selector?) {
        
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.setTitleColor(titleColor, for: .normal)
        button.titleLabel?.font = titleFont
        button.titleEdgeInsets = titleEdgeInsets
        if action != nil {
            button.addTarget(target, action: action!, for: .touchUpInside)
        }
        button.sizeToFit()
        if button.bounds.width < 40 || button.bounds.height > 40 {
            let width = 40 / button.bounds.height * button.bounds.width;
            button.bounds = CGRect(x: 0, y: 0, width: width, height: 40)
        }
        self.init(customView: button)
    }
    
    convenience init(image: UIImage?,
                     selectImage: UIImage? = nil,
                     imageEdgeInsets: UIEdgeInsets = .zero,
                     target: Any?,
                     action: Selector?) {
        
        let button = UIButton(type: .system)
        button.setImage(image?.withRenderingMode(.alwaysOriginal), for: .normal)
        button.setImage(selectImage?.withRenderingMode(.alwaysOriginal), for: .selected)
        button.imageEdgeInsets = imageEdgeInsets
        if action != nil {
            button.addTarget(target, action: action!, for: .touchUpInside)
        }
        button.sizeToFit()
        if button.bounds.width < 40 || button.bounds.height > 40 {
            let width = 40 / button.bounds.height * button.bounds.width;
            button.bounds = CGRect(x: 0, y: 0, width: width, height: 40)
        }
        
        self.init(customView: button)
    }
    
}




