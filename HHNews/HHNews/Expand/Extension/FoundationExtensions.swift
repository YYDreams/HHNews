//
//  Foundation.swift
//  Cartoon
//
//  Copyright © 2021 flowerflower. All rights reserved.
//

import UIKit

extension Array {
    /// 获取数组中的元素，增加了数组越界的判断
    func safeIndex(_ i: Int) -> Array.Iterator.Element? {
        guard !isEmpty && self.count > abs(i) else {
            return nil
        }
        
        for item in self.enumerated() {
            if item.offset == i {
                return item.element
            }
        }
        return nil
    }
    

}
