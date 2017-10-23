//
//  FCNavigationController.swift
//  FCWeiBo
//
//  Created by FC on 2017/10/11.
//  Copyright © 2017年 God bless never bug. All rights reserved.
//

import UIKit

class FCNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}

//rootviewcontroller的添加也是push压栈的方式添加的 
extension FCNavigationController{

    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
//        如果不是栈底控制器 就隐藏底部的bar
        if (childViewControllers.count>0){
        viewController.hidesBottomBarWhenPushed=true
        }
        //        重写父类方法需要调用父类方法
        super.pushViewController(viewController, animated: true)
    }
}





