//
//  FCResposeData.swift
//  FCWeiBo
//
//  Created by FC on 2017/10/23.
//  Copyright © 2017年 God bless never bug. All rights reserved.
//

import UIKit
//delete delete delete delete delete delete delete delete deletev
class FCResposeData: NSObject {
   
    let ceshiArr = [1,1,1,1,2]
    //    模拟假数据 测试用
    func LoadData(SBlock:(Any)->()){
        SBlock(ceshiArr)
    }
  
}

