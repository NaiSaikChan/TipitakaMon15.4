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
                    Label("ဝိနယ်", systemImage: "text.book.closed.fill")
                }
                .tag(0)
                
                SuttaViewL()
                .tabItem {
                    Label("သုတ်", systemImage: "text.book.closed.fill")
                    }
                    .tag(1)
                
                Abhidhamma()
                .tabItem {
                    Label("အဘိဓရ်", systemImage: "text.book.closed.fill")
                    }
                    .tag(3)
                
                infoView()
                .tabItem {
                    Label("ဂလာန်", systemImage: "info.circle.fill")
                    }
                    .tag(4)
            }.font(.custom("Pyidaungsu", size: 14))
        }
    }
}

#Preview {
    ContentView()
}
