//
//  BXRotationView.swift
//  BXRotationView
//
//  Created by xiaoxiao on 16/7/28.
//  Copyright © 2016年 xiaoxiao. All rights reserved.
//

import UIKit

/**
 *  点击翻牌的代理方法
 */
protocol BXRotationViewDelegate{
    
     func bxRotationViewDidSelected(_ result:String)
}

class BXRotationView: UIView {

    /// 代理
    var delegate:BXRotationViewDelegate?
    
    /// 正面
    var first:UIImageView!
    /// 反面
    var second:UIImageView!
    
    
    var hasTurnover = false
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setup()
    }
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        self.setup()
    }
    func setup(){
        self.backgroundColor = UIColor.clear
        
        second = UIImageView(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height))
        self.addSubview(second)
        second.isHidden = true
        second.layer.transform = CATransform3DRotate(self.layer.transform,CGFloat(M_PI) , 0, 1, 0)
        
        first = UIImageView(frame: CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height))
        self.addSubview(first)
        
        
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(BXRotationView.rotation))
        self.addGestureRecognizer(tap)
    }
    
    
    func rotation() {
        
        if hasTurnover {
            
            self.delegate?.bxRotationViewDidSelected("翻过的牌不能再次翻!")
            return
        }
        
        UIView.animate(withDuration: 1.0, animations: {
            self.layer.transform = CATransform3DRotate(self.layer.transform,CGFloat(M_PI) , 0, 1, 0)
            
            
        }) 
        self.perform(#selector(BXRotationView.changeImage), with: nil, afterDelay: 0.5)
        
        hasTurnover = true
        
    }
    func changeImage() {
        first.isHidden = true
        second.isHidden = false
        
        self.delegate?.bxRotationViewDidSelected("已翻开!")
    }
    
    
}
