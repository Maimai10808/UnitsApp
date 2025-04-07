//
//  UnitsView.swift
//  UnitsApp
//
//  Created by mac on 4/7/25.
//

import SwiftUI

struct UnitsView: View {
    
    @ObservedObject var viewModel: UnitsViewModel
    
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Enter Input value here")) {
                    // 单位种类选择器
                    Picker("Category", selection: $viewModel.selectedCategory) {
                        ForEach(UnitCategory.allCases, id: \.self) { category in
                            Text(category.rawValue)
                        }
                    }
                }
                
                Section(header: Text("Enter Input value here")) {
                    // 输入单位选择器
                    Picker("From", selection: $viewModel.selectedInputUnitIndex) {
                        ForEach(0..<viewModel.availableUnits.count, id: \.self) { index in
                            Text(viewModel.availableUnits[index].name)
                        }
                    }.pickerStyle(MenuPickerStyle())
                }
                
                
                
                Section(header: Text("OUTPUT UNIT")) {
                    // 输出单位选择器
                    Picker("To", selection: $viewModel.selectedOutputUnitIndex) {
                        ForEach(0..<viewModel.availableUnits.count, id: \.self) { index in
                            Text(viewModel.availableUnits[index].name)
                        }

                    }.pickerStyle(MenuPickerStyle())
                }
                
                Section(header: Text("Check Output value here")) {
                    // 输入框和输出展示
                    TextField("Enter value", text: $viewModel.inputValue)
                    Text(viewModel.conversionResult)
                }
                
            }
            .navigationTitle("Unit Conversions")
        }
    }
}
#Preview {
    UnitsView(viewModel: UnitsViewModel())
}
