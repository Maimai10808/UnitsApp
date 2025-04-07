//
//  UnitsViewModel.swift
//  UnitsApp
//
//  Created by mac on 4/7/25.
//
import Foundation
import SwiftUI

class UnitsViewModel: ObservableObject  {
    @Published var inputValue = ""
    @Published var outputValue = ""
    
    @Published var inputUnitValue = 2
    let inputUnits = ["meters", "millimeters", "centimeters", "kilometers", "feet"]
    
    @Published var outputUnitValue = 2
    let outputUnits = ["meters", "millimeters", "centimeters", "kilometers", "feet"]
    
    var inputUnitAfterConversionToOutput: String {
        let value = Double(inputValue) ?? 0
        var input = Measurement(value: value, unit: UnitLength.meters)
        
        switch inputUnits[inputUnitValue] {
        case "meters":
            input = Measurement(value: value, unit: .meters)
        case "millimeters":
            input = Measurement(value: value, unit: .millimeters)
        case "centimeters":
            input = Measurement(value: value, unit: .centimeters)
        case "kilometers":
            input = Measurement(value: value, unit: .kilometers)
        case "feet":
            input = Measurement(value: value, unit: .feet)
        default:
            input = Measurement(value: value, unit: .meters)
        }
        
        let converted: Measurement<UnitLength>
        switch outputUnits[outputUnitValue] {
        case "meters":
            converted = input.converted(to: .meters)
        case "millimeters":
            converted = input.converted(to: .millimeters)
        case "centimeters":
            converted = input.converted(to: .centimeters)
        case "kilometers":
            converted = input.converted(to: .kilometers)
        case "feet":
            converted = input.converted(to: .feet)
        default:
            converted = input.converted(to: .meters)
        }

        // 保留两位小数并拼接单位
        let formattedValue = String(format: "%.2f", converted.value)
        return "\(formattedValue) \(converted.unit.symbol)"
    }
}



