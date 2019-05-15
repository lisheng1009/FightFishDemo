//
//  HomeViewController.swift
//  FightFish
//
//  Created by 安静清晨 on 2019/5/10.
//  Copyright © 2019年 walk-in-minds. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    private lazy var topGuideView : CommonTopGuideView = {
        
        let f = CGRect(x: 0, y: 0, width: kScreenWidth, height: kGuideViewHight)
        let titles = ["分类","推荐","全部", "王者荣耀", "和平精英", "绝地求生", "炉石传说", "魔兽世界", "正能量", "体育频道"]
        let guideView = CommonTopGuideView.init(frame: f, titles: titles)
        guideView.backgroundColor = UIColor.orange
        return guideView
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
        
        view.addSubview(topGuideView)
        view.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.barTintColor = UIColor.orange
    }

}

//设置UI界面
extension HomeViewController{
    
    private func setupUI(){
        //navi
        setupNavi()
        
        //searchBar
        setupSearchBar()
    }
    
    private func setupNavi(){
        
        let b = UIButton()
        b.setImage(UIImage(named: "caomei"), for: .normal)
        b.setImage(UIImage(named: "caomei_gray"), for: .selected)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: b)
        
        let b1 = UIButton(imageName: "take", highlightedImageName: "take_gray", size: CGSize(width: 40, height: 40))
        let b2 = UIButton(imageName: "ss", highlightedImageName: "ss_gray", size: CGSize(width: 40, height: 40))
        let b3 = UIButton(imageName: "ttq", highlightedImageName: "ttq_gray", size: CGSize(width: 40, height: 40))
        
        navigationItem.rightBarButtonItems = [UIBarButtonItem(customView: b1),UIBarButtonItem(customView: b2),UIBarButtonItem(customView: b3)]
        
    }
    
    
    private func setupSearchBar(){
        
        let b = UISearchBar(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
        b.placeholder = "搜索"
        navigationItem.titleView = b
    }
    
    
}
