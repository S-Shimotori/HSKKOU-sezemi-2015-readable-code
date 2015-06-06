//
//  ViewController.swift
//  RecipeManagerIOS
//
//  Created by 比佐 幸基 on 2015/06/06.
//  Copyright (c) 2015年 比佐 幸基. All rights reserved.
//

import UIKit
import SwiftCSV

class ViewController: UIViewController {

    @IBOutlet weak var recipeTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let filePath = NSURL(string: "recipe-data.csv")

        if let filePath = filePath {
            var error: NSErrorPointer = nil
            if let csv = CSV(contentsOfURL: filePath, error: error) {
                println(csv)
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

