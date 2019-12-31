//
//  ViewController1.swift
//  iAgree2.0
//
//  Created by ThinkServiceNew on 30/12/19.
//  Copyright © 2019 vwits. All rights reserved.
//

import UIKit
import WebKit


class ViewController1: UIViewController {

    @IBOutlet weak var TermsAndConditionsView: WKWebView!
    @IBOutlet weak var AcceptButton: UIButton!
    @IBOutlet weak var DeclineButton: RoundButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadHtmlFile()

        // Do any additional setup after loading the view.
//        AcceptButton.layer.cornerRadius = 10
//        AcceptButton.clipsToBounds = 

    }
    
    func loadHtmlFile() {
        let url = Bundle.main.url(forResource: "TermsAndConditionsData", withExtension:"html")
        let request = NSURLRequest(url: url!)
        TermsAndConditionsView.load(request as URLRequest)
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
