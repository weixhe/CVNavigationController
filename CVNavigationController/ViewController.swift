//
//  ViewController.swift
//  CVNavigationController
//
//  Created by caven on 2018/12/21.
//  Copyright © 2018 caven-twy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var backText: String?
    var cusTitle: Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.green
        
        self.title = "第一页"
        
        let createText = UIButton(type: .custom)
        createText.frame = CGRect(x: 10, y: 100, width: 100, height: 44)
        createText.setTitle("sysBack", for: .normal)
        createText.setTitleColor(UIColor.blue, for: .normal)
        createText.backgroundColor = UIColor.white
        createText.addTarget(self, action: #selector(customText(sender:)), for: .touchUpInside)
        view.addSubview(createText)
        
        let showCusTitle = UIButton(type: .custom)
        showCusTitle.frame = CGRect(x: 180, y: 100, width: 100, height: 44)
        showCusTitle.setTitle("默认标题", for: .normal)
        showCusTitle.setTitleColor(UIColor.blue, for: .normal)
        showCusTitle.backgroundColor = UIColor.white
        showCusTitle.addTarget(self, action: #selector(changeTitleType(sender:)), for: .touchUpInside)
        view.addSubview(showCusTitle)
        
        let push = UIButton(type: .custom)
        push.frame = CGRect(x: 10, y: 180, width: 60, height: 44)
        push.setTitle("Push", for: .normal)
        push.setTitleColor(UIColor.blue, for: .normal)
        push.backgroundColor = UIColor.white
        push.addTarget(self, action: #selector(pushToNextPage), for: .touchUpInside)
        view.addSubview(push)
        
    }

    @objc func pushToNextPage() {
        let secondVC = SecondViewController()
        secondVC.backText = backText
        secondVC.cusTitle = cusTitle
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    @objc func customText(sender: UIButton) {
        sender.isSelected = !sender.isSelected
        
        backText = sender.isSelected ? "<<" : nil
        sender.setTitle(backText ?? "sysBack", for: .normal)
    }
    
    @objc func changeTitleType(sender: UIButton) {
        sender.isSelected = !sender.isSelected
        cusTitle = sender.isSelected ? true : false
        sender.setTitle(cusTitle ? "自定义标题" : "默认标题", for: .normal)
    }

}

