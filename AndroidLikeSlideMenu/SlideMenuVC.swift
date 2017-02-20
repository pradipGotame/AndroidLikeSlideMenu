//
//  SlideMenuVC.swift
//  AndroidLikeSlideMenu
//
//  Created by pradip gotamay on 2/20/17.
//  Copyright © 2017 LiNS Pvt Ltd. All rights reserved.
//

import UIKit

class SlideMenuVC: UIViewController {

    @IBOutlet weak var view_container: UIView!
    
    
    @IBAction func btn_hideMenu(_ sender: UIButton) {
        hideMenu()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setUpMethod()
    }
    
    func setUpMethod() -> Void {
        
        self.view_container.alpha = 0.0
        
        Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showMenu), userInfo: nil, repeats: false)
        
        let tapGestureForMainView = UITapGestureRecognizer.init(target: self, action: #selector(tapGesture_MainView))
        self.view.addGestureRecognizer(tapGestureForMainView)
        
        let tapGestureForContainerView = UITapGestureRecognizer.init(target: self, action: #selector(tapGesture_ContainerView))
        self.view_container.addGestureRecognizer(tapGestureForContainerView)
    }
    
    func tapGesture_MainView() -> Void {
        hideMenu()
    }
    
    func tapGesture_ContainerView() -> Void {
        print("this method is for preventing vc to be dismissed when clicked inside view_container");
    }
    
    func showMenu() -> Void {
        self.view_container.alpha = 1.0
        AppManager.addSlideAnimationtoLeft(view: self.view_container)
    }
    
    func hideMenu() -> Void{
        AppManager.addSlideAnimationtoRight(view: self.view_container)
        self.view_container.alpha = 0.0
        
        Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(dismissVC), userInfo: nil, repeats: false)
    }
    
    func dismissVC() -> Void {
        self.dismiss(animated: false, completion: nil)
    }

}
