//
//  BaseModel.swift
//  Cartoon
//
//  Copyright © 2021 flowerflower. All rights reserved.
//

import HandyJSON

class BaseModel<TT: HandyJSON>: HandyJSON{
    
    var status_code :String? //状态码
    var message :String? //信息
    var model: TT? //对象模型
    var modelArr: [TT]? //数组模型
    var data : Any?

    
    func mapping(mapper: HelpingMapper) {
        mapper <<<
            self.model <-- "data"
        mapper <<<
            self.modelArr <-- "data"
    }
    required init() {}
    
    required init?(coder aDecoder: NSCoder) {fatalError("init(coder:) has not been implemented")}
}
