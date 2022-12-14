//
//  ClockPreview.swift
//  InterfaceProductionNotTestingVersion
//
//  Created by Tom Wu on 2022-11-18.
//

import SwiftUI

struct ClockPreview: View {
    let text1: String
    let text2: String
    let text3: String
    var body: some View {
        
        
        HStack{
            
            VStack{
                HStack {
                    Text(text1).font(.caption2)
                    Spacer()
                }
                HStack {
                    Text(text2).font(.title2)
                    Spacer()
                }
            }
            
            Spacer()
            Text(text3).font(.largeTitle)
                .frame(height: 100)
        }
    }
}

struct ClockPreview_Previews: PreviewProvider {
    static var previews: some View {
        ClockPreview(text1: "need add", text2: "Vancouver", text3: "0:00")
    }
}
