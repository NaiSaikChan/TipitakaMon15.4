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
        
        NavigationStack{
           
            VStack{
                // TabView with three tabs
                TabView(selection: $selectedTab){
                    vinyanaView()
                        .tabItem {
                            Label("ဝိနယ်", systemImage: "text.book.closed.fill")
                        }
                        .tag(0)
                    
                    sutaView()
                        .tabItem {
                            Label("သုတ်", systemImage: "book.pages.fill")
                        }
                        .tag(1)
                    
                    Abhidhamma()
                        .tabItem {
                            Label("အဘိဓရ်", systemImage: "book.circle")
                        }
                        .tag(3)
                    
                    
                }.font(.custom("Pyidaungsu", size: 12))
                    
                
            }
            .toolbar(content: {
                ToolbarItem(placement: .navigation){
                    Text("ပါဠိပိဋကတ် ဘာသာမန်")
                        .font(.custom("Pyidaungsu", size: 20))
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    NavigationLink(destination: infoView()){
                        Image(systemName: "info.circle.fill")
                            .imageScale(.large)
                    }
                }
            })
            .background(
                           NavigationBarModifier(
                               titleFont: UIFont(name: "Pyidaungsu", size: 20) ?? UIFont.systemFont(ofSize: 20) // Adjust size as needed
                           )
                       )
        }
    }
}

struct NavigationBarModifier: UIViewControllerRepresentable {

    let titleFont: UIFont

    func makeUIViewController(context: Context) -> UIViewController {
        let viewController = UIViewController()
        let appearance = UINavigationBarAppearance()
        appearance.titleTextAttributes = [
            .font: titleFont
        ]
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        return viewController
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}


#Preview {
    ContentView()
}
