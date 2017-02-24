//
//  CircleView.swift
//  CircleViewSwift
//
//  Created by mainone on 16/5/16.
//  Copyright © 2016年 wjn. All rights reserved.
//

import UIKit

class CircleView: UIView {
    
    var progress: Double = 0.0 {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    //初始位置偏移量
    let offsetNum = 1.0
    
    override func draw(_ rect: CGRect) {
        let viewW = rect.size.width
        let viewH = rect.size.height
        let radius = viewW * 0.2
        let endAngle = progress * 2 * M_PI - M_PI_2 * offsetNum
        
        
        let context_back: CGContext = UIGraphicsGetCurrentContext()!
        context_back.setLineWidth(3.0);
        context_back.setStrokeColor(red: 0.6, green: 0.6, blue: 0.6, alpha: 1.0);
        context_back.addArc(center: CGPoint(x: CGFloat(viewW * 0.5), y: CGFloat(viewH * 0.5)), radius: CGFloat(radius), startAngle: CGFloat(0.0), endAngle: CGFloat(2.0 * .pi), clockwise: false)
        context_back.strokePath();
        
        
        
        let context: CGContext = UIGraphicsGetCurrentContext()!
        context.setLineWidth(3.0);
        context.setStrokeColor(red: 0, green: 0, blue: 1, alpha: 1.0);
        context.addArc(center: CGPoint(x: CGFloat(viewW * 0.5), y: CGFloat(viewH * 0.5)), radius: CGFloat(radius), startAngle: CGFloat(CGFloat(-M_PI_2 * offsetNum)), endAngle: CGFloat(CGFloat(endAngle)), clockwise: false)
        
        
        context.strokePath();
        
    }

    
  
    
    
    
}
