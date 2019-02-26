//
//  ViewController.swift
//  Battery Life
//
//  Created by Thomas Prezioso on 2/25/19.
//  Copyright © 2019 Thomas Prezioso. All rights reserved.
//

import UIKit
import CoreBluetooth

class ViewController: UIViewController, CBCentralManagerDelegate {
    
    var manager: CBCentralManager!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        manager = CBCentralManager(delegate: self, queue: nil)
    }

    func centralManagerDidUpdateState(_ central: CBCentralManager) {
        <#function body#>
    }
}

