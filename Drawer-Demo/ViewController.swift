//
//  ViewController.swift
//  Drawer-Demo
//
//  Created by Akash Patel on 17/12/17.
//  Copyright © 2017 Akash Patel. All rights reserved.
//

import UIKit
import KYDrawerController

class ViewController: UIViewController {

    let appDel = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnMenuPressed(_ sender: Any) {
        
        appDel.drawerController.setDrawerState(.opened, animated: true)
    }
    
    @IBAction func btnGoBackPressed(_ sender: Any) {
        
        let launchVC = self.storyboard?.instantiateViewController(withIdentifier: "Launch") as! LaunchVC
        
        appDel.window?.rootViewController = launchVC
        appDel.window?.makeKeyAndVisible()
    }
}

