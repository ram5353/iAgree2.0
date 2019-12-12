//
//  ViewController.swift
//  iAgree2.0
//
//  Created by RAMKIRAN on 3 - 03 - 2017.
//  Copyright © 2019 vwits. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BottomTextView: UILabel!
    @IBOutlet weak var TopTextView: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        BottomTextLineSpacing()
        TopTextLineSpacing()
        
    }
    
    func BottomTextLineSpacing() {
        
        let textForLabel = "Mit der neuen Historie-Funktion können Sie ab sofort Ihre in der Vergangenheit bearbeiteten Vorgänge einsehen."
        let paragraphStyle = NSMutableParagraphStyle()
        
        //line height size
        paragraphStyle.lineSpacing = 7
        let attrString = NSMutableAttributedString(string: textForLabel)
        attrString.addAttribute(NSAttributedString.Key.paragraphStyle, value:paragraphStyle, range:NSMakeRange(0, attrString.length))
        BottomTextView.attributedText = attrString
        BottomTextView.textAlignment = NSTextAlignment.left
    }
    
    func TopTextLineSpacing() {
        
        let textForLabel1 = "Wir habben iAgree fur SIe neu aufgebaut!  Wishchen SIe nach links um ie Verbessrungen zu entdecken, die Ihnen die neue App biete"
        let paragraphStyle = NSMutableParagraphStyle()
        
        //line height size
        paragraphStyle.lineSpacing = 7
        let attrString = NSMutableAttributedString(string: textForLabel1)
        attrString.addAttribute(NSAttributedString.Key.paragraphStyle, value:paragraphStyle, range:NSMakeRange(0, attrString.length))
        TopTextView.attributedText = attrString
        TopTextView.textAlignment = NSTextAlignment.left
    }
    
    
    

}

