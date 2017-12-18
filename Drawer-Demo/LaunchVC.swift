//
//  LaunchVC.swift
//  Drawer-Demo
//
//  Created by Akash Patel on 18/12/17.
//  Copyright © 2017 Akash Patel. All rights reserved.
//

import UIKit

class LaunchVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnConfigureDrawer(_ sender: Any) {
        
        let appDel = UIApplication.shared.delegate as! AppDelegate
        
        let mainVC = self.storyboard?.instantiateViewController(withIdentifier: "Screen1")
        let menuVC = self.storyboard?.instantiateViewController(withIdentifier: "Drawer")
        
        appDel.drawerController.mainViewController = mainVC
        appDel.drawerController.drawerViewController = menuVC
//                appDel.drawerController.screenEdgePanGestureEnabled = false
        
        appDel.window?.rootViewController = appDel.drawerController
        appDel.window?.makeKeyAndVisible()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
