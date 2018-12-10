//
//  ChatVC.swift
//  Smack
//
//  Created by Khaled Aldousari on 12/9/18.
//  Copyright © 2018 Khaled Aldousari. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {
    //Outlets
    @IBOutlet weak var menuButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //add action to the button which calls the reveal toggle of the side menu
        menuButton.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
    }
    



}
