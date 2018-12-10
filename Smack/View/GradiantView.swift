//
//  GradiantView.swift
//  Smack
//
//  Created by Khaled Aldousari on 12/9/18.
//  Copyright © 2018 Khaled Aldousari. All rights reserved.
//

import UIKit
//to see the results on the storyboard
@IBDesignable
class GradiantView: UIView {
    
    // this makes the topColor var changeable from the storyboard
    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.2901960784, green: 0.3019607843, blue: 0.8470588235, alpha: 1) {
        //this makes updating the cahnges automatically instead of building the app to see the resaults
        didSet{
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var botColor: UIColor = #colorLiteral(red: 0.1725490196, green: 0.831372549, blue: 0.8470588235, alpha: 1) {
        
        didSet{
            self.setNeedsLayout()
        }
    }
    
    //this function gets called when the setNeedsLayout are used
    override func layoutSubviews() {
        
        customizeView()
        
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    
    func customizeView(){
        let gradientLayer = CAGradientLayer()
        
        gradientLayer.colors = [topColor.cgColor, botColor.cgColor]
        //Gradients x and y values are frpm 0 - 1
        //the gradient starts at top left of the view which is 0,0
        gradientLayer.startPoint = CGPoint(x: 0,y: 0)
        //the gradient ends at the bot right of the view which is 1,1
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        //set the gradiant size to the UIView size
        gradientLayer.frame = self.bounds
        //add it to UIView layers
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}
