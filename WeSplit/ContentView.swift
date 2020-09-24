//
//  ContentView.swift
//  WeSplit
//
//  Created by Angela Chen on 9/23/20.
//  Copyright © 2020 Angela Chen. All rights reserved.https://help.apple.com/xcode/mac/11.0/en.lproj/Art/ap_add_github.png
//

import SwiftUI

struct ContentView: View {
    @State var tapCount = 0 //works around limitations for struct (because struct is fixed)
    var body: some View {
        
        Button("Tap Count\(tapCount)"){
            self.tapCount += 1
        }
//        NavigationView{
//            Form{
//                Text("Hello, World!")
//                Text("Hello, World!")
//            }
//        }.navigationBarTitle(Text("SwiftUI"), displayMode: .inline)
//
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
