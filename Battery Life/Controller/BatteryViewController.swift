//
//  BatteryViewController.swift
//  Battery Life
//
//  Created by Thomas Prezioso on 3/7/19.
//  Copyright © 2019 Thomas Prezioso. All rights reserved.
//

import UIKit

class BatteryViewController: UIViewController {

    var batteryLevel: Float {
        return UIDevice.current.batteryLevel
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        UIDevice.current.isBatteryMonitoringEnabled = true
        NotificationCenter.default.addObserver(self, selector: #selector(batteryLevelDidChange), name: UIDevice.batteryLevelDidChangeNotification, object: nil)

        print(batteryLevel)
    }
    
    @objc func batteryLevelDidChange(_ notification: Notification) {
        print(batteryLevel)
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
