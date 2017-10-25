//
//  FCVisitView.swift
//  FCWeiBo
//
//  Created by FC on 2017/10/24.
//  Copyright © 2017年 God bless never bug. All rights reserved.
//

import UIKit

class FCVisitView: UIView {
  
//    访客视图的字典  通过外部传递进来
    var visitorInfo : [String : String]? {
        didSet{
           guard let imageName = visitorInfo?["ImageName"],
            let desprition = visitorInfo?["description"] else{
                return
            }
            bgIcon.image=UIImage.init(named: imageName)
//            为了没警告 打印一下description
            print(desprition)
            
        }
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor=UIColor(red: 0.3, green: 0.3, blue: 0.3, alpha: 0.1)
        setupVisitor()
        animation()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
//    自己写进去的
//    fileprivate lazy var bgIcon : UIImageView = UIImageView(image: UIImage.init(named:"smallicon"))
//
//    fileprivate lazy var bgHomeimg : UIImageView = UIImageView(image: UIImage.init(named:"house"))
//
//    fileprivate lazy var bgalpha : UIImageView = UIImageView(image: UIImage.init(named: "smalliconfreedbig"))
//    从网络获取 然后加载进来 更加实时
    fileprivate lazy var bgIcon : UIImageView = UIImageView(image: UIImage.init(named:"smallicon"))
    
    fileprivate lazy var bgHomeimg : UIImageView = UIImageView(image: UIImage.init(named:"house"))
    
    fileprivate lazy var bgalpha : UIImageView = UIImageView(image: UIImage.init(named: "smalliconfreedbig"))

    
   
}
extension FCVisitView{

   fileprivate func setupVisitor() {
    self.addSubview(bgIcon)
    self.insertSubview(bgalpha, belowSubview: bgHomeimg)
    self.addSubview(bgHomeimg)
//    取消自动布局
    for  v in self.subviews{
        v.translatesAutoresizingMaskIntoConstraints=false
      }
    addConstraint(NSLayoutConstraint(item: bgIcon,
                                     attribute: .centerX,
                                     relatedBy: .equal,
                                     toItem: self,
                                     attribute: .centerX,
                                     multiplier: 1.0,
                                     constant: 0))
    addConstraint(NSLayoutConstraint(item: bgIcon,
                                     attribute: .centerY,
                                     relatedBy: .equal,
                                     toItem: self,
                                     attribute: .centerY,
                                     multiplier: 1.0,
                                     constant: 0))
    
    addConstraint(NSLayoutConstraint(item: bgHomeimg,
                                     attribute: .centerX,
                                     relatedBy: .equal,
                                     toItem: bgIcon,
                                     attribute: .centerX,
                                     multiplier: 1.0,
                                     constant: 0))
    addConstraint(NSLayoutConstraint(item: bgHomeimg,
                                     attribute: .centerY,
                                     relatedBy: .equal,
                                     toItem: bgIcon,
                                     attribute: .centerY,
                                     multiplier: 1.0,
                                     constant: 0))
  
    }
   fileprivate func animation() {
        // 1.创建动画
        let rotationAnim = CABasicAnimation(keyPath: "transform.rotation.z")

        // 2.设置动画的属性
        rotationAnim.fromValue = 0
        rotationAnim.toValue = NSNumber(value: M_PI * 2.0) // 旋转角度
        rotationAnim.repeatCount = MAXFLOAT
        rotationAnim.duration = 10
        // 如果不设置当页面运行到后台再次进入该页面的时候 动画会停止
        rotationAnim.isRemovedOnCompletion = false
        // 3.将动画添加到layer中
        bgIcon.layer.add(rotationAnim, forKey: nil)

    }
   
   
    
    
}


















