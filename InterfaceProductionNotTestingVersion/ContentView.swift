//
//  ContentView.swift
//  InterfaceProductionNotTestingVersion
//
//  Created by Tom Wu on 2022-11-17.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationView{
                List{
                    ClockPreview(text1: "need add", text2: "Vancouver", text3: "0:00")
                    
                    ClockPreview(text1: "need add", text2: "Toronto", text3: "0:01")
                    
                    ClockPreview(text1: "need add", text2: "Beijing", text3: "0:02")
                    
                    ClockPreview(text1: "need add", text2: "Sydney", text3: "0:03")
                }
                .navigationTitle("WorldClock")
                .toolbar{
                    ToolbarItemGroup(placement: .navigationBarLeading){
                        Button("Edit"){
                            print("Edit")
                        }
                    }
                    ToolbarItemGroup(placement: .navigationBarTrailing){
                        Button("+"){
                            print("plus")
                        }
                    }
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabView(selection: Binding.constant(3)){
            Text("World Clock")
                .tabItem{
                    Image(systemName: "globe")
                    Text("World Clock")
                }
                .tag(1)
            
            Text("Alarm")
                .tabItem{
                    Image(systemName: "alarm.fill")
                    Text("Alarm Clock")
                }
                .tag(2)
            
            ContentView()
                .tabItem{
                    Image(systemName: "stopwatch.fill")
                    Text("Stop Watch")
                }
                .tag(3)
            
            Text("Timer")
                .tabItem{
                    Image(systemName: "timer")
                    Text("Timer")
                }
                .tag(4)
        }
        .accentColor(.orange)
        .preferredColorScheme(.dark)
    }
}
