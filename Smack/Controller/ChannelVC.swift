//
//  ChannelVC.swift
//  Smack
//
//  Created by Khaled Aldousari on 12/9/18.
//  Copyright © 2018 Khaled Aldousari. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {
    //outlets
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Rear view takes all the screen width - 60
        self.revealViewController()?.rearViewRevealWidth =  self.view.frame.width - 60
        
        
    }
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
    
}
