//
//  SettingsViewController.swift
//  tip_calc
//
//  Created by Jakhongir Khusanov on 1/5/18.
//  Copyright © 2018 Jakhongir Khusanov. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        defaultTipControl.selectedSegmentIndex = SettingsHelper.getDefaultTipIndex()
    }
    @IBAction func onValueChanged(_ sender: Any) {
        SettingsHelper.setDefaultTipIndex(tipIndex: defaultTipControl.selectedSegmentIndex)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
