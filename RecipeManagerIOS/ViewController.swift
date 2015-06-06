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

    let delimiterInCSV = NSCharacterSet(charactersInString: "\t")
    let csvFileName = "recipe-data"
    let recipeTitleHeader = "title"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let filePath = NSBundle.mainBundle().pathForResource(csvFileName, ofType: "csv")

        if let filePath = filePath {
            let fileURL = NSURL(fileURLWithPath: filePath)
            if let fileURL = fileURL, csv = CSV(contentsOfURL: fileURL, delimiter: delimiterInCSV, error: nil) {
                var fileOutput = ""
                var recipeId = 1
                for readLine in csv.rows {
                    if let recipeTitle = readLine[recipeTitleHeader] {
                        fileOutput += "\(recipeId): \(recipeTitle)\n"
                        recipeId++
                    }
                }
                recipeTextView.text = fileOutput
            } else {
                println("csv取得失敗")
            }
        } else {
            println("filepath取得失敗")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

