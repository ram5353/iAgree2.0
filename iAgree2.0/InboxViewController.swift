//
//  InboxViewController.swift
//  iAgree2.0
//
//  Created by ThinkServiceNew on 01/01/20.
//  Copyright © 2020 vwits. All rights reserved.
//

import UIKit

class InboxViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
     override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(true)
        // Hide the back button
                tabBarController?.navigationItem.setHidesBackButton(true, animated:true);
                self.tabBarController?.navigationItem.title = "Inbox"

            }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
