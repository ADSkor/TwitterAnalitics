//
//  ViewController.swift
//  TwitterAnalitics
//
//  Created by ADSkor on 22/03/2019.
//  Copyright © 2019 Skorotkin Aleksandr. All rights reserved.
//

import UIKit
import SwifteriOS

class ViewController: UIViewController {
    
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var sentimentLabel: UILabel!
    
    let swifter = Swifter(consumerKey: "hCdhxDDKalhZGOV6gYjIPjpMD", consumerSecret: "nux29G1QWHNG7WDGzlngI737DqfJUw70MCmfF6AZgVGZSbssPo")
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        swifter.searchTweet(using: "@Apple", lang: "ru", success: { (results, metadata) in
            print(results)
        }) { (error) in
            print("Tehre is an error with the Tweeter API request, \(error)")
        }
        
    }

    @IBAction func predictPressed(_ sender: Any) {
    
    
    }
    
}

