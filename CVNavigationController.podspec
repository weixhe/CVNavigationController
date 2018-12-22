Pod::Spec.new do |s|
  s.name         = "CVNavigationController"    #存储库名称
  s.version      = "1.0.1"      #版本号，与tag值一致
  s.summary      = "CVNavigationController"  #简介
  s.swift_version= "4.2"
  s.description  = "简易封装NavController，可设置标准的left，right，title， 也可设置多items，自定义titleView，为items设置space等"  #描述
  s.homepage     = "https://github.com/weixhe/CVNavigationController"      #项目主页，不是git地址
  s.license      = { :type => "MIT", :file => "LICENSE" }   #开源协议
  s.author       = { "weixhe" => "workerwei@163.com" }  #作者
  s.platform     = :ios, "8.0"                  #支持的平台和版本号
  s.source       = { :git => "https://github.com/weixhe/CVNavigationController.git", :tag => "1.0.1" }         #存储库的git地址，以及tag值
  s.source_files =  "CVNavigationController/Classes/*.{swift}" #需要托管的源代码路径
  s.resources    = "CVNavigationController/Classes/*.bundle"		# 资源文件 
  # s.resource_bundles = {"CVNavigationController" => ["CVNavigationController/Classes/*.bundle"]}		# 不需要打Bundle
  s.requires_arc = true #是否支持ARC

  # s.dependency "KeychainAccess"    #所依赖的第三方库，没有就不用写

end
