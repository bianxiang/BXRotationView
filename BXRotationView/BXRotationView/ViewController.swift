//
//  ViewController.swift
//  BXRotationView
//
//  Created by xiaoxiao on 16/7/28.
//  Copyright © 2016年 xiaoxiao. All rights reserved.
//

import UIKit

class ViewController: UIViewController,BXRotationViewDelegate {

    @IBOutlet weak var bx: BXRotationView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        /**
         *  代码使用方法
         */
        
        let rotationView = BXRotationView(frame: CGRect(x: 100, y: 100, width: 200, height: 200))
        rotationView.delegate = self
        
        rotationView.first.image = UIImage(named: "1.jpg")
        rotationView.second.image = UIImage(named: "2.jpg")
        
        self.view.addSubview(rotationView)
        
        
        /**
         *  xib使用方法若要使用请打开
         */
        
//        bx.first.image = UIImage(named: "1.jpg")
//        bx.second.image = UIImage(named: "2.jpg")
//        bx.delegate = self
        
    }
    
    
    func bxRotationViewDidSelected(_ result: String) {
        print(result)
    }

}

