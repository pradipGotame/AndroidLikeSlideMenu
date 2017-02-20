//
//  ViewController.swift
//  AndroidLikeSlideMenu
//
//  Created by pradip gotamay on 2/20/17.
//  Copyright © 2017 LiNS Pvt Ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func btn_showMenu(_ sender: Any) {
        let slideMenuVC = self.storyboard?.instantiateViewController(withIdentifier: "SlideMenuVC") as! SlideMenuVC
        slideMenuVC.modalTransitionStyle   = UIModalTransitionStyle.crossDissolve
        slideMenuVC.modalPresentationStyle = UIModalPresentationStyle.overCurrentContext
        slideMenuVC.view.backgroundColor   = UIColor.black.withAlphaComponent(0.7)
        self.present(slideMenuVC, animated: false, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

