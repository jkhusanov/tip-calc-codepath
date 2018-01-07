//
//  SettingsHelper.swift
//  tip_calc
//
//  Created by Jakhongir Khusanov on 1/5/18.
//  Copyright © 2018 Jakhongir Khusanov. All rights reserved.
//

import Foundation
import UIKit

class SettingsHelper {

    struct Constants {
        static let defaultTipIndexKey = "default_tip_index"
        static let defaults = UserDefaults.standard
    }
    class func setDefaultTipIndex(tipIndex: Int) {
        Constants.defaults.set(tipIndex, forKey: Constants.defaultTipIndexKey)
        Constants.defaults.synchronize()
    }
    
    class func getDefaultTipIndex() -> Int {
        return Constants.defaults.integer(forKey: Constants.defaultTipIndexKey)
    }
}
