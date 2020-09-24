//
//  ContentView.swift
//  WeSplit
//
//  Created by Angela Chen on 9/23/20.
//  Copyright © 2020 Angela Chen. All rights reserved.https://help.apple.com/xcode/mac/11.0/en.lproj/Art/ap_add_github.png
//

import SwiftUI

struct ContentView: View {
   
    @State private var checkAmount = ""
    @State private var numPeople = "2"
    @State private var tipPercentage = 2
    
    var totalPerPerson: Double {
        let peopleCount = Double(numPeople) ?? 0 + 2.0
        let tipSelection = Double(tipPercentages[tipPercentage])
        let orderAmount = Double(checkAmount) ?? 0 //attempts to convert string to double and returns 0 if it fails
        let tipValue = orderAmount/100 * tipSelection
        let grandTotal = orderAmount + tipValue
        let amountPerPerson = grandTotal/peopleCount
        
        return amountPerPerson
    }
    
    var totalPlusTip: Double {
        let tipSelection = Double(tipPercentages[tipPercentage])
        let orderAmount = Double(checkAmount) ?? 0 //attempts to convert string to double and returns 0 if it fails
        let tipValue = orderAmount/100 * tipSelection
        let grandTotal = orderAmount + tipValue
        
        return grandTotal
        
    }
    
    let tipPercentages = [10, 15, 20, 25, 0]
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    TextField("Amount", text: $checkAmount).keyboardType(.decimalPad)
//                    Picker("Number of people", selection: $numPeople) {
//                        ForEach(2 ..< 100){
//                            Text("\($0) people")
//                        }
                    TextField("Number of People", text: $numPeople).keyboardType(.decimalPad)
                        
                    }
                
                Section(header: Text("How much tip?")) {
                    Picker("Tip Percentage", selection: $tipPercentage) {
                        ForEach(0 ..< tipPercentages.count) {
                            Text("\(self.tipPercentages[$0])%")
                        }
                    }.pickerStyle(SegmentedPickerStyle())
                }
                Section(header: Text("Total amount for the check"))
                {
                    Text("$\(totalPlusTip, specifier: "%.2f")")
                }
                Section(header: Text("Amount per person")) {
                    Text("$\(totalPerPerson, specifier: "%.2f")")
                }
            }
        
        }.navigationBarTitle("WeSplit")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
