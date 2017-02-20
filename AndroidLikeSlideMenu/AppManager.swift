//
//  AppManager.swift
//  AndroidLikeSlideMenu
//
//  Created by pradip gotamay on 2/20/17.
//  Copyright © 2017 LiNS Pvt Ltd. All rights reserved.
//

import UIKit

class AppManager: NSObject {
    
    class func addSlideAnimationtoLeft(view: UIView) {
        let transition = CATransition()
        transition.duration = 0.5
        transition.type     = kCATransitionPush
        transition.subtype  = kCATransitionFromLeft
        transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        view.layer.add(transition, forKey: nil)
    }
    
    class func addSlideAnimationtoRight(view: UIView) {
        let transition = CATransition()
        transition.duration = 0.5
        transition.type     = kCATransitionPush
        transition.subtype  = kCATransitionFromRight
        transition.timingFunction = CAMediaTimingFunction(name: kCAMediaTimingFunctionEaseInEaseOut)
        view.layer.add(transition, forKey: nil)
    }

}
