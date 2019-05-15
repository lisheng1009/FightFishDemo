//
//  MainTabBarViewController.swift
//  FightFish
//
//  Created by 安静清晨 on 2019/5/10.
//  Copyright © 2019年 walk-in-minds. All rights reserved.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let navi1 = UINavigationController(rootViewController: HomeViewController())
        navi1.tabBarItem.image = UIImage(named: "caomei_gray")?.withRenderingMode(.alwaysOriginal)
        navi1.tabBarItem.selectedImage = UIImage(named: "caomei")?.withRenderingMode(.alwaysOriginal)
        navi1.tabBarItem.title = "主页"
        
        let navi2 = UINavigationController(rootViewController: FollowViewController())
        navi2.tabBarItem.image = UIImage(named: "take_gray")?.withRenderingMode(.alwaysOriginal)
        navi2.tabBarItem.selectedImage = UIImage(named: "take")?.withRenderingMode(.alwaysOriginal)
        navi2.tabBarItem.title = "直播"
        
        let navi3 = UINavigationController(rootViewController: ProfileViewController())
        navi3.tabBarItem.image = UIImage(named: "ss_gray")?.withRenderingMode(.alwaysOriginal)
        navi3.tabBarItem.selectedImage = UIImage(named: "ss")?.withRenderingMode(.alwaysOriginal)
        navi3.tabBarItem.title = "我的"
        
        let navi4 = UINavigationController(rootViewController: LiveViewController())
        navi4.tabBarItem.image = UIImage(named: "ttq_gray")?.withRenderingMode(.alwaysOriginal)
        navi4.tabBarItem.selectedImage = UIImage(named: "ttq")?.withRenderingMode(.alwaysOriginal)
        navi4.tabBarItem.title = "粉丝"
        
        tabBar.tintColor = UIColor.orange
        viewControllers = [navi1,navi2,navi4,navi3]
        
    }
    
//    private func createNaviController:

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
