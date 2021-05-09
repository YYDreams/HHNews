//
//  BaseCollectionViewCell.swift
//  Cartoon
//
//  Copyright © 2021 flowerflower. All rights reserved.
//

import UIKit

class BaseCollectionViewCell: UICollectionViewCell {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configUI()
    }
    
    required init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")

    }
    open func configUI() {}

    
}
