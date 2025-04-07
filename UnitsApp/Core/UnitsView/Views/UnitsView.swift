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
                    TextField("Input Value", text: $viewModel.inputValue)
                }
                
                Section(header: Text("INPUT UNIT")) {
                    Picker("Input Unit - ", selection: $viewModel.inputUnitValue) {
                        ForEach(0..<viewModel.inputUnits.count) {
                            Text("\(viewModel.inputUnits[$0])")
                        }
                    }.pickerStyle(MenuPickerStyle())
                }
                
                Section(header: Text("OUTPUT UNIT")) {
                    Picker("Output Unit - ", selection: $viewModel.outputUnitValue) {
                        ForEach(0..<viewModel.outputUnits.count) {
                            Text("\(viewModel.outputUnits[$0])")
                        }
                    }.pickerStyle(MenuPickerStyle())
                }
                
                Section(header: Text("Check Output value here")) {
                    Text(viewModel.inputUnitAfterConversionToOutput)
                }
                
            }
            .navigationTitle("Unit Conversions")
        }
    }
}
#Preview {
    UnitsView(viewModel: UnitsViewModel())
}
