//
//  TemperatureViewModel.swift
//  MVVMTemperatureAppSample
//
//  Created by BAG on 2/2/20.
//  Copyright © 2020 BAG. All rights reserved.
//

import Foundation

protocol TemperatureViewModelDelegate {
    func temperatureUpdated(_ vm: TemperatureViewModel)
}
class TemperatureViewModel {
 
    private var _temperature: Int = 0
    public var delegate: TemperatureViewModelDelegate?
    public var temperature: String {
        return "\(_temperature) °C"
    }
 
    public func loadTemperature() {
 
        _temperature  = 20
        delegate?.temperatureUpdated(self)
    }
 
    public func changeTemperature(to newTemperature: String) {
 
        _temperature = Int(newTemperature) ?? 0
        delegate?.temperatureUpdated(self)
    }
}
