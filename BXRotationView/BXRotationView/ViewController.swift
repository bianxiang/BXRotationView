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
        
        let rotationView = BXRotationView(frame: CGRectMake(100, 100, 200, 200))
        rotationView.delegate = self
        
        rotationView.first.image = UIImage(named: "1.jpg")
        rotationView.second.image = UIImage(named: "2.jpg")
//        rotationView.delega
        self.view.addSubview(rotationView)
        
        
        /**
         *  xib使用方法若要使用请打开
         */
        
//        bx.first.image = UIImage(named: "1.jpg")
//        bx.second.image = UIImage(named: "2.jpg")
        
        
    }
    
    
    func bxRotationViewDidSelected(result: String) {
        print(result)
    }

}

