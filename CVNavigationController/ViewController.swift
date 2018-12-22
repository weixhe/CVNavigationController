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
    var slidingBackEnable: Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.green
        
        self.title = "第一页"
        
        let createText = UIButton(type: .system)
        createText.frame = CGRect(x: 10, y: 100, width: 100, height: 44)
        createText.setTitle("sysBack", for: .normal)
        createText.setTitleColor(UIColor.blue, for: .normal)
        createText.backgroundColor = UIColor.white
        createText.addTarget(self, action: #selector(customText(sender:)), for: .touchUpInside)
        view.addSubview(createText)
        
        let showCusTitle = UIButton(type: .system)
        showCusTitle.frame = CGRect(x: createText.frame.maxX + 10, y: 100, width: 100, height: 44)
        showCusTitle.setTitle("默认标题", for: .normal)
        showCusTitle.setTitleColor(UIColor.blue, for: .normal)
        showCusTitle.backgroundColor = UIColor.white
        showCusTitle.addTarget(self, action: #selector(changeTitleType(sender:)), for: .touchUpInside)
        view.addSubview(showCusTitle)
        
        let slidingBackEnable = UIButton(type: .system)
        slidingBackEnable.frame = CGRect(x: showCusTitle.frame.maxX + 10, y: 100, width: 150, height: 44)
        slidingBackEnable.setTitle("slidingBack YES", for: .normal)
        slidingBackEnable.setTitleColor(UIColor.blue, for: .normal)
        slidingBackEnable.backgroundColor = UIColor.white
        slidingBackEnable.isSelected = true
        slidingBackEnable.addTarget(self, action: #selector(onClickSlidingBackEnable(sender:)), for: .touchUpInside)
        view.addSubview(slidingBackEnable)
        
        
        let line = UIView(frame: CGRect(x: 0, y: slidingBackEnable.frame.maxY + 10, width: view.frame.width, height: 0.5))
        line.backgroundColor = UIColor.lightGray
        view.addSubview(line)
        
        
        let push = UIButton(type: .system)
        push.frame = CGRect(x: 10, y: line.frame.maxY + 10, width: 150, height: 44)
        push.setTitle("Push", for: .normal)
        push.setTitleColor(UIColor.blue, for: .normal)
        push.backgroundColor = UIColor.white
        push.addTarget(self, action: #selector(pushToNextPage), for: .touchUpInside)
        view.addSubview(push)
        
        let push2 = UIButton(type: .system)
        push2.frame = CGRect(x: push.frame.maxX + 10, y: push.frame.minY, width: 150, height: 44)
        push2.setTitle("Push More Item", for: .normal)
        push2.setTitleColor(UIColor.blue, for: .normal)
        push2.backgroundColor = UIColor.white
        push2.addTarget(self, action: #selector(pushToMorePage), for: .touchUpInside)
        view.addSubview(push2)
        
        let presentToNav = UIButton(type: .system)
        presentToNav.frame = CGRect(x: 10, y: push.frame.maxY + 10, width: 150, height: 44)
        presentToNav.setTitle("Present To Nav", for: .normal)
        presentToNav.setTitleColor(UIColor.blue, for: .normal)
        presentToNav.backgroundColor = UIColor.white
        presentToNav.addTarget(self, action: #selector(presentToNavController), for: .touchUpInside)
        view.addSubview(presentToNav)
        
       
        
    }

    @objc func pushToNextPage() {
        let secondVC = SecondViewController()
        secondVC.backText = backText
        secondVC.cusTitle = cusTitle
        secondVC.slidingBackEnable = slidingBackEnable
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
    
    @objc func pushToMorePage() {
        let thirdVC = ThirdViewController()
        self.navigationController?.pushViewController(thirdVC, animated: true)
    }
    
    @objc func presentToNavController() {
        let forthVC = ForthViewController()
        let forthNav = CVNavigationController.init(rootViewController: forthVC)
        self.present(forthNav, animated: true, completion: nil)
    }
    
    @objc func onClickSlidingBackEnable(sender: UIButton) {
        sender.isSelected = !sender.isSelected
        slidingBackEnable = sender.isSelected ? true : false
        sender.setTitle(slidingBackEnable ? "slidingBack YES" : "slidingBack NO", for: .normal)
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

