# CVNavigationController

简易封装NavController，可设置标准的left，right，title， 也可设置多items，自定义titleView，为items设置space等

### 引入工程
```
pod 'CVNavigationController'     // 引入组件 - navBar
```
  
###  使用方法
  在AppDelegate中设置nabBar的通用属性
  CVNavigationAppearance.share.itemTextColor = UIColor.orange
  CVNavigationAppearance.share.itemFont = UIFont.systemFont(ofSize: 15)

  CVNavigationAppearance.share.titleColor = UIColor.orange
  CVNavigationAppearance.share.titleFont = UIFont.systemFont(ofSize: 20)
  
  在控制器的适当的位置，比如ViewDidLoad() 方法中直接设置相关属性
  
  1. 显示单个
  ```
  cv_navigationItem?.leftItem = CVBarButtonItem(title: "<<", image: nil, target: self, action: #selector(back))
  cv_navigationItem?.rightItem = CVBarButtonItem(title: "share", target: self, action: #selector(share))
  ```
  
  2. 显示多个item
  ```
  // 左侧
  let item1 = CVBarButtonItem(title: "关闭", target: nil, action: nil)
  let item2 = CVBarButtonItem(title: "返回", target: nil, action: nil)
  cv_navigationItem?.leftItems = [item1, item2]
  
  // 右侧
  let space1 = CVBarSpaceItem(space: 5)
  let item3 = CVBarButtonItem(title: "分享", target: self, action: #selector(share))
  let item4 = CVBarButtonItem(title: "刷新", target: nil, action: nil)
  cv_navigationItem?.rightItems = [space1, item3, item4]
  ```
  
  3. 显示title
  ```
  self.title = "首页-2"
  //  或   cv_navigationItem?.title = "首页-2"
  ```
  
  4. 设置titleView
  ```
  let titleView = UIButton(type: .system)
  titleView.setTitleColor(UIColor.blue, for: .normal)
  titleView.setTitle("点击已分享", for: .normal)
  titleView.addTarget(self, action: #selector(shareToFriend), for: .touchUpInside)
  titleView.frame = CGRect(x: 0, y: 0, width: 80, height: 44)
  cv_navigationItem?.titleView = titleView
  ```
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
