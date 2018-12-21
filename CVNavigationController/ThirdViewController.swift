//
//  ThirdViewController.swift
//  CVNavigationController
//
//  Created by caven on 2018/12/21.
//  Copyright © 2018 caven-twy. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        self.title = "第三页"
        
        // 左侧
        let back = CVBarButtonItem(title: "返回", target: self, action: #selector(backToPrevious))
        let close = CVBarButtonItem(title: "关闭", target: self, action: #selector(backToPrevious))
        self.cv_navigationItem?.leftItems = [back, close]
        
        // 右侧
        let share = CVBarButtonItem(title: "分享", target: self, action: #selector(shareToFriend))
        let refresh = CVBarButtonItem(title: "刷新", target: self, action: #selector(refreshUI))
        let space = CVBarSpaceItem(space: 5)
        self.cv_navigationItem?.rightItems = [space, share, refresh]
    }
    

    @objc func shareToFriend() {
        UIAlertView(title: "提示", message: "分享成功", delegate: nil, cancelButtonTitle: "OK").show()
    }
    
    @objc func refreshUI() {
        UIAlertView(title: "提示", message: "刷新界面", delegate: nil, cancelButtonTitle: "OK").show()
    }
    
    

}
