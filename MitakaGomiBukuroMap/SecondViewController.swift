//
//  SecondViewController.swift
//  MitakaGomiBukuroMap
//
//  Created by 原ひかり on 2016/01/25.
//  Copyright © 2016年 kumaocky. All rights reserved.
//

import Foundation

//
//  SecondViewController.swift
//  UIKit013
//
//

import UIKit

class SecondViewController: UIViewController ,UIWebViewDelegate {
    
    private var myWebView: UIWebView!
    
    init() {
        super.init(nibName: nil, bundle: nil)
        
        // Viewの背景色をGreenに設定する.
        self.view.backgroundColor = UIColor.greenColor()
        
        // tabBarItemのアイコンをFeaturedに、タグを2と定義する.
        self.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Featured, tag: 2)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    required override init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: NSBundle!) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
}
