//
//  ContentView.swift
//  WeSplit
//
//  Created by Angela Chen on 9/23/20.
//  Copyright © 2020 Angela Chen. All rights reserved.https://help.apple.com/xcode/mac/11.0/en.lproj/Art/ap_add_github.png
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    
    var body: some View {
        Form{
            TextField("Enter your name", text: $name)
            Text("Your name is \(name)")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
