//
//  TemperatureViewController.swift
//  MVVMTemperatureAppSample
//
//  Created by BAG on 2/2/20.
//  Copyright © 2020 BAG. All rights reserved.
//

import UIKit

class TemperatureViewController: UIViewController, TemperatureViewModelDelegate {

    @IBOutlet weak var tempLbl: UILabel!
    @IBOutlet weak var tempTxt: UITextField!
    var vm = TemperatureViewModel()
     
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        vm.delegate = self
        vm.loadTemperature()
    }

    func temperatureUpdated(_ vm: TemperatureViewModel) {
           self.tempLbl.text = vm.temperature
    }
    
    @IBAction func updateTemperature() {
    
        vm.changeTemperature(to: tempTxt.text!)
    }

}

