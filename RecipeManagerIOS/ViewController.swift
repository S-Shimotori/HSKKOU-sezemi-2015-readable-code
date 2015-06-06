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
    
    @IBOutlet weak var selectIdTextField: UITextField!

    let delimiterInCSV = NSCharacterSet(charactersInString: "\t")
    let csvFileName = "recipe-data"
    let recipeTitleHeader = "title"
    var recipeData = [String: String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectIdTextField.addTarget(self, action: "selectIdTextFieldValueChanged:", forControlEvents: UIControlEvents.ValueChanged)

        let filePath = NSBundle.mainBundle().pathForResource(csvFileName, ofType: "csv")

        if let filePath = filePath {
            let fileURL = NSURL(fileURLWithPath: filePath)
            if let fileURL = fileURL, csv = CSV(contentsOfURL: fileURL, delimiter: delimiterInCSV, error: nil) {
                for readLine in csv.rows {
                    if let recipeTitle = readLine[recipeTitleHeader] {
                        fileOutput += "\(recipeId): \(recipeTitle)\n"
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

    func selectIdTextFieldValueChanged(sender: UITextField) {

    }
}

