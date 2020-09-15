//
//  SettingsViewController.swift
//  tippy
//
//  Created by Dzvinka Koman on 8/20/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var defaultTip: UISegmentedControl!

    @IBAction func setDefault(_ sender: Any) {
        let tipPerIndices = [0, 1, 2]
        let tip_percentageI = tipPerIndices[defaultTip.selectedSegmentIndex]
        
        let defaults = UserDefaults.standard
        defaults.set(tip_percentageI, forKey: "tipP")

        UserDefaults.standard.synchronize()
    }
    
    //@IBAction func SaveDefault(_segue: UIStoryboardSegue) {
    //}
    override func viewDidLoad() {
       super.viewDidLoad()
        
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
