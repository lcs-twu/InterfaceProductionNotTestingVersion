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
                    HStack{
                        
                        VStack{
                            Text("need add")
                            Text("Vancouver")
                        }
                        Spacer()
                        Text("0:00")
                            .frame(height: 100)
                        
                    }
                    
                    HStack{
                        VStack{
                            Text("need add")
                            Text("Toronto")
                        }
                        Spacer()
                        Text("0:01")
                            .frame(height: 100)
                    }
                    
                    HStack{
                        VStack{
                            Text("need add")
                            Text("Beijing")
                        }
                        Spacer()
                        Text("0:02")
                            .frame(height: 100)
                    }
                    
                    
                    HStack{
                        VStack{
                            Text("need add")
                            Text("Beijing")
                        }
                        Spacer()
                        Text("0:02")
                            .frame(height: 100)
                    }
                }
                .navigationTitle("WorldClock")
                .toolbar{EditButton()}
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
