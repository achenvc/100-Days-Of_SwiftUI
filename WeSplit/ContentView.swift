//
//  ContentView.swift
//  WeSplit
//
//  Created by Angela Chen on 9/23/20.
//  Copyright © 2020 Angela Chen. All rights reserved.https://help.apple.com/xcode/mac/11.0/en.lproj/Art/ap_add_github.png
//

import SwiftUI

struct ContentView: View {
   
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"
    var body: some View {
//        Form{
//            ForEach(0..<100){
//                Text("Row \($0)")
//            }
//        }
        Picker("Select your student", selection: $selectedStudent) {
            ForEach(0..<students.count){
                Text(self.students[$0])
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
