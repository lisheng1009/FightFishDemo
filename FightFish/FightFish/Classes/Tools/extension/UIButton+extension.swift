
//
//  UIButton+extension.swift
//  FightFish
//
//  Created by 安静清晨 on 2019/5/10.
//  Copyright © 2019年 walk-in-minds. All rights reserved.
//

import UIKit

extension UIButton {
    //扩展一个类方法
    /*
    class func createButton(imageName:String, highlightedImageName:String, size: CGSize) -> UIButton {
        let btn = UIButton()
        btn.setImage(UIImage(named: imageName), for: .normal)
        btn.setImage(UIImage(named: highlightedImageName), for: .highlighted)
        btn.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: size)
        return btn
    }
     */
    
    //扩展一个构造函数
    // 1. 必须以便利开头  2. 在构造函数中必须ming
    convenience init(imageName:String, highlightedImageName:String, size: CGSize){
        self.init()
        self.setImage(UIImage(named: imageName), for: .normal)
        self.setImage(UIImage(named: highlightedImageName), for: .highlighted)
        self.frame = CGRect(origin: CGPoint(x: 0, y: 0), size: size)
    }
}
