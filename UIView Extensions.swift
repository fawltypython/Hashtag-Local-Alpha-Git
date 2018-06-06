//
//  Constants and Extensions.swift
//  Hashtag Local Alpha
//
//  Created by Garrett kay on 5/16/18.
//  Copyright © 2018 Garrett Kay. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func setGradientBackgroundColor(colorOne: UIColor, colorTwo: UIColor) {
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.startPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 0.0)
        
        self.layer.insertSublayer(gradientLayer, at: 0)
        
        
    }
    func setTableViewBackgroundGradient(sender: Any, _ colorOne:UIColor, _ colorTwo:UIColor) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor]
        gradientLayer.locations = [0.0, 1.0]
        gradientLayer.startPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 0.0)
        
        self.layer.insertSublayer(gradientLayer, at: 0)
        
       
    
    
}

}
