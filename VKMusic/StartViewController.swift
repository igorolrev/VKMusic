//
//  StartViewController.swift
//  VKMusic
//
//  Created by Владимир Мельников on 01.02.16.
//  Copyright © 2016 vlmlnkv. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        navigationItem.title? = "Login"
    }
    
    @IBAction func loginAction(sender: AnyObject) {
        RequestManager.sharedManager.authorizeUser {
            let appDelegate = UIApplication.sharedApplication().delegate
            let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
            let musicVC = storyboard.instantiateInitialViewController()
            appDelegate?.window??.rootViewController = musicVC
        }
    }
}