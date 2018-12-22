//
//  CVNavigation.Extension.swift
//  CVBaseKit
//
//  Created by caven on 2018/11/25.
//  Copyright © 2018 caven-twy. All rights reserved.
//

import Foundation
import UIKit


extension UIViewController {
    
    private struct ExtensionKey {
        static var navigationBar: String = "com.cv.navigationBar"
        static var navigationItem: String = "com.cv.navigationItem"
    }
    
    
    public var cv_navigationController: CVNavigationController? {
        return self.navigationController as? CVNavigationController
    }
    
    public var cv_navigationBar: CVNavigationBar? {
        get {
            return objc_getAssociatedObject(self, &ExtensionKey.navigationBar) as? CVNavigationBar
        }
        set {
            objc_setAssociatedObject(self, &ExtensionKey.navigationBar, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    public var cv_navigationItem: CVNavigationItem? {
        get {
            return objc_getAssociatedObject(self, &ExtensionKey.navigationItem) as? CVNavigationItem
        }
        set {
            newValue?.bind(to: self)
            objc_setAssociatedObject(self, &ExtensionKey.navigationItem, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    @objc public func backToPrevious() {
        
        let controlers = self.navigationController?.viewControllers
        if controlers != nil && controlers!.count > 1 {
            if controlers![controlers!.count - 1] == self {
                navigationController?.popViewController(animated: true)
                return
            }
        }
        
        dismiss(animated: true, completion: nil)
        
//        self.navigationController?.popViewController(animated: true)
    }
}
