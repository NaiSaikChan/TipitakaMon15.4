//
//  bannerAdView.swift
//  TipitakaMon
//
//  Created by Saik Chan on 14/8/24.
//

import SwiftUI
import GoogleMobileAds

struct BannerAdView: UIViewRepresentable {
    func makeUIView(context: Context) -> GADBannerView {
        let banner = GADBannerView(adSize: GADAdSizeBanner)
        banner.adUnitID = "ca-app-pub-2824674932258413/9697959527"
        
        if let rootViewController = UIApplication.shared.getKeyWindow()?.rootViewController {
                    banner.rootViewController = rootViewController
                }
        
        banner.load(GADRequest())
        return banner
    }
    
    func updateUIView(_ uiView: GADBannerView, context: Context) {
    }
}

extension UIApplication {
    func getKeyWindow() -> UIWindow? {
        // Iterate through connected scenes and find the first window scene
        // Then return its key window
        return self.connectedScenes
            .compactMap { $0 as? UIWindowScene }
            .flatMap { $0.windows }
            .first { $0.isKeyWindow }
    }
}
