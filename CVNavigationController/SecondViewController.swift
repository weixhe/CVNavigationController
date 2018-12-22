//
//  SecondViewController.swift
//  CVNavigationController
//
//  Created by caven on 2018/12/21.
//  Copyright © 2018 caven-twy. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var backText: String?
    var cusTitle: Bool = false
    var slidingBackEnable: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        if cusTitle {
            let btn = UIButton(type: .system)
            btn.setTitleColor(UIColor.blue, for: .normal)
            btn.setTitle("点击已分享", for: .normal)
            btn.addTarget(self, action: #selector(shareToFriend), for: .touchUpInside)
            btn.frame = CGRect(x: 0, y: 0, width: 80, height: 44)
            self.cv_navigationItem?.titleView = btn
        } else {
            self.title = "第二页"
        }
        
        
        if let text = backText {
            self.cv_navigationItem?.leftItem = CVBarButtonItem(title: text, target: self, action: #selector(backToPrevious))
        }
        
        self.cv_navigationItem?.rightItem = CVBarButtonItem(title: "分享", target: self, action: #selector(shareToFriend))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.cv_navigationController?.slidingBackEnable = slidingBackEnable
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.cv_navigationController?.slidingBackEnable = true
    }
    
    
    
    // MARK: - Actions
    
    
    @objc func shareToFriend() {
        UIAlertView(title: "提示", message: "分享成功", delegate: nil, cancelButtonTitle: "OK").show()
    }

}
