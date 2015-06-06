//
//  ViewController.swift
//  RecipeManagerIOS
//
//  Created by 比佐 幸基 on 2015/06/06.
//  Copyright (c) 2015年 比佐 幸基. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recipeTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let filePath = NSBundle.mainBundle().pathForResource("recipe-data", ofType: "csv")
        let fileOutput = NSString(contentsOfFile: filePath!, encoding: NSUTF8StringEncoding, error: nil) as! String
        
        recipeTextView.text = fileOutput
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

