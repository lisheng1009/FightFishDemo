//
//  CommonTopGuideView.swift
//  FightFish
//
//  Created by 安静清晨 on 2019/5/15.
//  Copyright © 2019年 walk-in-minds. All rights reserved.
//

import UIKit

class CommonTopGuideView: UIView {
    
    private lazy var topScrollView : UIScrollView = {
        let s = UIScrollView(frame: self.bounds)
        s.showsHorizontalScrollIndicator = false
        s.scrollsToTop = false
        s.bounces = false
        s.delegate = self
        return s
    }()
    
    var titles : [String]
    var labels : [UILabel]?
    var currentLabelTag : Int = 1

    init(frame: CGRect, titles:[String]) {
        self.titles = titles
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

}


//UI
extension CommonTopGuideView{
    
    private func  setupUI(){
        self.addSubview(topScrollView)
        
        var currentWith : CGFloat = 5
        var labelArray = NSMutableArray.init()
        
        for(index, title) in titles.enumerated(){
            
            let l = UILabel()
            l.text = title
            l.tag = index
            l.textColor = UIColor.white
            
            if(l.tag == 1){
                l.font = UIFont.boldSystemFont(ofSize: 16)
            }else{
                l.font = UIFont.systemFont(ofSize: 16)
            }
            l.sizeToFit()
            l.frame = CGRect(x: currentWith, y: 15, width: l.bounds.width, height: l.bounds.height)
            topScrollView.addSubview(l)
            currentWith += l.bounds.width + 10
//            print(l.frame)
            labelArray.add(l)
            
            l.isUserInteractionEnabled = true
            let ges = UITapGestureRecognizer(target: self, action: #selector(self.onClickLabel(tapGes:)))
            l.addGestureRecognizer(ges)
        }
        
        topScrollView.contentSize = CGSize(width: currentWith, height: 0)
        print(topScrollView.contentSize)
        labels = (labelArray.copy() as! [UILabel])
//        print(labels)
    }
    
    @objc private func onClickLabel(tapGes:UITapGestureRecognizer){
        
        let oldLabel = labels![currentLabelTag]
        oldLabel.font = UIFont.systemFont(ofSize: 16)
        
        let currentLabel = tapGes.view as! UILabel
        currentLabelTag = currentLabel.tag
        
        currentLabel.font = UIFont.boldSystemFont(ofSize: 16)
        
        let originFrameX = currentLabel.frame.minX
        let goalX = (kScreenWidth - currentLabel.frame.width) / 2
        
        var offsetX = originFrameX - goalX
        
        if offsetX < 0{
            offsetX = 0
        }else if offsetX > 271{  // 271 = contentSize.x - 375(屏幕宽度)
            offsetX = 271
        }
        
        topScrollView.setContentOffset(CGPoint(x:offsetX , y: 0), animated: true)
        print(offsetX)
        print(kScreenWidth)
        
    }
    
}

extension CommonTopGuideView: UIScrollViewDelegate{
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print(scrollView.contentOffset.x)
    }
    
}
