//
//  ViewController.swift
//  tippy
//
//  Created by Dzvinka Koman on 8/20/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tip2ppl: UILabel!
    @IBOutlet weak var tip3ppl: UILabel!
    @IBOutlet weak var tip4ppl: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        billField.becomeFirstResponder()
        super.viewDidLoad()
        // Sets the title in the Navigation Bar
        self.title = "Tippy"
        //supposed to open keyboard when the app starts but does not seem to work; sth overtakes it
        
        // Uses Color Literal to simplify process of color assignment
        self.view.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
 
    // stops editing once user taps anywhere on storyboard
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }

    //removes keyboard when user starts choosing tip percentages
    @IBAction func ontap2(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // calculate the bill amount
        // ?? 0 means "if input is not valid, change it to 0"
        let bill = Double(billField.text!) ?? 0
        // calculate the tip and total
        let tip_percentages = [0.1, 0.18, 0.2]
        let tip1 = tip_percentages[tipControl.selectedSegmentIndex]
        let tip = bill * tip1
        let total = bill + tip
        let total2 = total/2
        let total3 = total/3
        let total4 = total/4
        
        // update the tip and total labels
        // .2f makes the program show you 2 decimal places
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        tip2ppl.text = String(format: "$%.2f", total2)
        tip3ppl.text = String(format: "$%.2f", total3)
        tip4ppl.text = String(format: "$%.2f", total4)
        
    }
}

