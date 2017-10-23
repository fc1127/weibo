//
//  FCTarBarController.swift
//  FCWeiBo
//
//  Created by FC on 2017/10/11.
//  Copyright © 2017年 God bless never bug. All rights reserved.
//
import UIKit

class FCTarBarController: UITabBarController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpuiui()
        setupBtn()
    
    }
    
    lazy var AddBtn : UIButton = UIButton(frame: CGRect(x: 0, y: 0, width: 0, height: 0), title: "", backimg: "")!
    
    
    
}

extension FCTarBarController {
    
    
    func setupBtn(){
        
        AddBtn.frame=CGRect(x: 0, y: 0, width: tabBar.bounds.width/5, height: tabBar.bounds.height-10)
        AddBtn.setBackgroundImage(UIImage(named: "tabbar_compose_icon_add"), for: .normal)
        tabBar.addSubview(AddBtn)
        AddBtn.frame=tabBar.bounds.insetBy(dx: tabBar.bounds.width/5*2, dy: 5)
        AddBtn.addTarget(self, action: #selector(modoafunc), for: .touchUpInside)

    }
    
    func modoafunc() {
        let vc = UIViewController()
        let nav = FCNavigationController(rootViewController: vc)
        self.present(nav, animated: true, completion: nil)
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask{
        return .portrait
    }
    
    
    
      func setUpuiui() {
        
        var array = [UIViewController]()
        
        let dict = [
            ["clsname":"FCHomeViewController","title":"首页","selimg":"tabbar_home_highlighted"],
            ["clsname":"FCMessageViewController","title":"消息","selimg":"toolbar_compose_highlighted"],
            ["clsname":"UIViewController"],
            ["clsname":"FCDiscoverViewController","title":"发现","selimg":"tabbar_discover_highlighted"],
            ["clsname":"FCProfileViewController","title":"我的","selimg":"tabbar_profile_highlighted"]
        ]
        
        for dic in dict{
            
            array.append(setTabBars(dic: dic))
        }
        
        viewControllers=array

 
    }
    
   private func setTabBars(dic:[String : String]) -> UIViewController {
        
        
        guard let title = dic["title"],
            let name=dic["clsname"],
            let selimg=dic["selimg"],
            let clsName = NSClassFromString("FCWeiBo."+name) as? UIViewController.Type
            else{
                
                return UIViewController()
        }
        let cls = clsName.init()
        
        cls.title=title
        
        cls.tabBarItem.image=UIImage(named: selimg)
        
        cls.tabBarItem.selectedImage=UIImage(named: selimg)?.withRenderingMode(.alwaysOriginal)
        
        cls.tabBarItem.setTitleTextAttributes([NSForegroundColorAttributeName: UIColor.orange], for: .highlighted)
        
        cls.tabBarItem.setTitleTextAttributes([NSFontAttributeName: UIFont.systemFont(ofSize: 12)], for: .normal)
        
        
        let nav = FCNavigationController(rootViewController: cls)
        return nav
        
    }
    
    
}


















////
////  FCTarBarController.swift
////  FCWeiBo
////
////  Created by FC on 2017/10/11.
////  Copyright © 2017年 God bless never bug. All rights reserved.
////
//
//import UIKit
//
//class FCTarBarController: UITabBarController {
//    var VCControllers = [UIViewController]()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        setArray()
//        
//    
//    }
//
//}
//
//
//extension FCTarBarController{
//    
//    
//    
//    func setArray(){
//        let array = [
//            ["clsName":"FCHomeViewController","title":"首页","img":""],
//            ["clsName":"FCHomeViewController","title":"首页","img":""],
//            ["clsName":"FCHomeViewController","title":"首页","img":""]
//        ]
//        for dic in array{
//            VCControllers.append(setTabBar(dic: dic))
//        }
//        viewControllers=VCControllers
//
//    }
//
//    func setTabBar(dic:[String: String]) -> UIViewController {
//        
//       guard let clsName = dic["clsName"],
//        let title = dic["title"],
//        let cls = NSClassFromString("FCWeiBo."+clsName) as? UIViewController.Type
//        else{
//        return UIViewController()
//        }
//        
//        let vc = cls.init()
//        let nav = FCNavigationController(rootViewController:vc)
//        nav.title=title
//        
//        return nav
//    }
//    
//    
//    
//    
//    
//}
//
//
//
//
