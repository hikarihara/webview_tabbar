//
//  FirstViewController.swift
//  MitakaGomiBukuroMap
//
//  Created by 原ひかり on 2016/01/25.
//  Copyright © 2016年 kumaocky. All rights reserved.
//

import Foundation

import UIKit

class FirstViewController: UIViewController {
    
    var webView: UIWebView?
    
    var targetURL = "https://www.google.com/maps/d/edit?mid=znaYibqmT0QY.k5980f8sAY7w&usp=sharing"

    
    init() {
        super.init(nibName: nil, bundle: nil)
        
        // Viewの背景色をwhiteに設定する.
        self.view.backgroundColor = UIColor.whiteColor()
        
        //tabBarItemのアイコンをFeaturedに、タグを1と定義する.
        self.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Featured, tag: 1)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    required override init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: NSBundle!) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 横幅、高さ、ステータスバーの高さを取得する
        let width: CGFloat! = self.view.bounds.width
        let height: CGFloat! = self.view.bounds.height
        let statusBarHeight: CGFloat! = UIApplication.sharedApplication().statusBarFrame.height
    

        
        
        
        // WebViewを生成する
        self.webView = self.createWebView(frame: CGRectMake(0, statusBarHeight, width, height - statusBarHeight - 49))
        
        // サブビューを追加する
        self.view.addSubview(self.webView!)
        
        // リクエストを生成する
        var url = NSURL(string: targetURL)
        var request = NSURLRequest(URL: url!)
        
        // 指定したページを読み込む
        self.webView?.loadRequest(request)
        
    }
    
    // WebView を生成する
    func createWebView(frame frame: CGRect) -> UIWebView {
        // UIWebViewのインスタンスを生成
        let _webView = UIWebView()
        
        // 画面サイズを設定する
        _webView.frame = frame
        
        return _webView
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}