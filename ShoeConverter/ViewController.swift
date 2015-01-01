//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Michael Panayiotou on 31/12/14.
//  Copyright (c) 2014 Michael Panayiotou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensShoesSizeTextField: UITextField!
    
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    
    @IBOutlet weak var womensShowSizeTextField: UITextField!
    
    @IBOutlet weak var womansConvertedShoeSizeLabel: UILabel!
    
    
    @IBOutlet weak var pictureImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {
//        
//        let sizeFromTextField = mensShoesSizeTextField.text
//        let numberFromTextField = sizeFromTextField.toInt()
//        var integerFromTextField = numberFromTextField!
        
        var integerFromTextField = mensShoesSizeTextField.text.toInt()!
        
        let conversionConstant = 30
        
        integerFromTextField = integerFromTextField + conversionConstant
        
        mensConvertedShoeSizeLabel.hidden=false
        
        let stringWithUpdatedShowSize = "\(integerFromTextField)"
        
        mensConvertedShoeSizeLabel.text=stringWithUpdatedShowSize
        
        mensShoesSizeTextField.text=""
        
        mensShoesSizeTextField.resignFirstResponder()
        
        
        
    }
    
    
    @IBAction func convertButtonWomansPressed(sender: UIButton) {
        
        
        let sizeFromTextField = Double((womensShowSizeTextField.text as NSString).doubleValue)
        
        let convertsionConstant = 30.5
        
        womansConvertedShoeSizeLabel.hidden=false
        womansConvertedShoeSizeLabel.text = "\(sizeFromTextField + convertsionConstant)"
    }

}

