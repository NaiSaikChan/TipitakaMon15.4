//
//  TipitakaMonApp.swift
//  TipitakaMon
//
//  Created by Saik Chan on 27/7/24.
//

import SwiftUI
import GoogleMobileAds

@main
struct TipitakaMonApp: App {
    
    init() {
        GADMobileAds.sharedInstance().start(completionHandler: nil)
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
