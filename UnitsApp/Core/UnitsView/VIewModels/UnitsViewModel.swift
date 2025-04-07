//
//  UnitsViewModel.swift
//  UnitsApp
//
//  Created by mac on 4/7/25.
//
import Foundation
import SwiftUI

class UnitsViewModel: ObservableObject {
    // MARK: - Published Properties
    @Published var inputValue: String = ""
    @Published var outputValue: String = ""
    
    @Published var selectedCategory: UnitCategory = .length
    @Published var selectedInputUnitIndex: Int = 0
    @Published var selectedOutputUnitIndex: Int = 1
    
    // MARK: - Computed Properties
    
    /// 当前单位分类下所有单位（作为 Picker 数据源）
    var availableUnits: [UnitOption] {
        selectedCategory.units
    }
    
    /// 根据输入值和选定单位计算转换结果
    var conversionResult: String {
        let inputUnits = availableUnits
        guard inputUnits.indices.contains(selectedInputUnitIndex),
              inputUnits.indices.contains(selectedOutputUnitIndex) else {
            return "Invalid selection"
        }
        
        let fromUnit = inputUnits[selectedInputUnitIndex].unit
        let toUnit = inputUnits[selectedOutputUnitIndex].unit
        
        let value = Double(inputValue) ?? 0
        let inputMeasurement = Measurement(value: value, unit: fromUnit)
        let converted = inputMeasurement.converted(to: toUnit)
        
        let formattedValue = String(format: "%.2f", converted.value)
        return "\(formattedValue) \(converted.unit.symbol)"
    }
}



