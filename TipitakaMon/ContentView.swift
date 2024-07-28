//
//  ContentView.swift
//  TipitakaMon
//
//  Created by Silarcara on 27/7/24.
//

import SwiftUI

struct ContentView: View {
    
    init() {
            let appearance = UITabBarAppearance()
        appearance.backgroundColor = UIColor.clear // Customize the tab bar color
            
            UITabBar.appearance().scrollEdgeAppearance = appearance
            UITabBar.appearance().standardAppearance = appearance
        }
    
    @State private var selectedTab = 0
    
    var body: some View {
        VStack{
            // TabView with three tabs
            TabView(selection: $selectedTab){
                vinyanaView()
                    .tabItem {
                    Label("Vinyana", systemImage: "text.book.closed.fill")
                }
                .tag(0)
                
               sutaView()
                .tabItem {
                        Image(systemName: "text.book.closed.fill")
                        Text("Suta")
                    }
                    .tag(1)
                
                abidhawView()
                .tabItem {
                        Image(systemName: "text.book.closed.fill")
                        Text("Abidhaw")
                    }
                    .tag(3)
            }
        }
    }
}

#Preview {
    ContentView()
}
