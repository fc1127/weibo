
//
//  KitTools.swift
//  FCWeiBo
//
//  Created by FC on 2017/10/12.
//  Copyright © 2017年 God bless never bug. All rights reserved.
//

import UIKit

extension UIButton{
//遍历构造函数
    convenience init?(frame: CGRect,title:String,backimg:String) {
        self.init()
        self.frame=frame
        self.setTitle(title, for: .normal)
        self.setBackgroundImage(UIImage(named: backimg), for: .normal)
        self.layer.masksToBounds=true
        self.layer.cornerRadius=5
        self.backgroundColor=UIColor.orange
    }
}


