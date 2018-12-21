//
//  ForthViewController.swift
//  CVNavigationController
//
//  Created by caven on 2018/12/21.
//  Copyright © 2018 caven-twy. All rights reserved.
//

import UIKit

class ForthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.white
        
        self.title = "第四页"
        
        self.cv_navigationItem?.leftItem = CVBarButtonItem(title: "返回", target: self, action: #selector(backToPrevious))
        
        let push = UIButton(type: .system)
        push.frame = CGRect(x: 10, y: 180, width: 150, height: 44)
        push.setTitle("Push", for: .normal)
        push.setTitleColor(UIColor.blue, for: .normal)
        push.backgroundColor = UIColor.white
        push.addTarget(self, action: #selector(pushToNextPage), for: .touchUpInside)
        view.addSubview(push)
    }
    
    @objc func pushToNextPage() {
        let secondVC = SecondViewController()
        self.navigationController?.pushViewController(secondVC, animated: true)
    }

}
