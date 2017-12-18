//
//  DrawerController.swift
//  Drawer-Demo
//
//  Created by Akash Patel on 17/12/17.
//  Copyright © 2017 Akash Patel. All rights reserved.
//

import UIKit

class DrawerController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var tableView: UITableView!
    
    let arrayTitles = ["Screen 1","Screen 2","Screen 3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayTitles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        cell?.textLabel?.text = arrayTitles[indexPath.row]
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let appDel = UIApplication.shared.delegate as! AppDelegate
        
        switch indexPath.row {
        case 0:
            let screen1 = self.storyboard?.instantiateViewController(withIdentifier: "Screen1") as! ViewController
            appDel.drawerController.mainViewController = screen1
            break
        case 1:
            let screen2 = self.storyboard?.instantiateViewController(withIdentifier: "Screen2") as! ViewController2
            appDel.drawerController.mainViewController = screen2
            break
        default:
            let screen3 = self.storyboard?.instantiateViewController(withIdentifier: "Screen3") as! ViewController3
            appDel.drawerController.mainViewController = screen3
            break
        }
        
        appDel.drawerController.setDrawerState(.closed, animated: true)
    }

}
