//
//  Abhidhamma.swift
//  TipitakaMonSwiftUI
//
//  Created by Saik  Chan on 9/5/20.
//  Copyright © 2020 Saik  Chan. All rights reserved.
//

import SwiftUI
import PDFViewer


struct Abhidhamma : View, DownloadManagerDelegate {
        
        @State private var viewLocalPDF = false
        @State private var viewRemotePDF = false
        @State private var loadingPDF: Bool = false
        @State private var progressValue: Float = 0.0
        @ObservedObject var downloadManager = DownloadManager.shared()
        
        func downloadDidFinished(success: Bool) {
            if success {
                loadingPDF = false
                viewRemotePDF = true
            }
        }
        
        func downloadDidFailed(failure: Bool) {
            if failure {
                loadingPDF = false
                print("PDF Loading fail")
            }
        }
        
        func downloadInProgress(progress: Float, totalBytesWritten: Float, totalBytesExpectedToWrite: Float) {
            loadingPDF = true
            progressValue = progress
        }
        
        
        var Abhidhaw : [Basket] = AbhidhawBook
        
        var body: some View{
            
            NavigationView{
                VStack{
                    List{
                        ForEach(Abhidhaw) { basket in
                            Section(header: Text(basket.basketName)){
                                ForEach(basket.bookTitle){ item in
                                    NavigationLink(destination: PDFViewer(pdfName: item.title, pdfUrlString: item.fileName)){
                                        Label(
                                            title: {
                                                Text(item.title)
                                                    .font(.custom("Pyidaungsu", size: 18))
                                                    .padding(10)
                                                    .bold()
                                                    .lineLimit(2)
                                                
                                            },
                                            icon: { Image(item.imageName)
                                                    .resizable()
                                                    .frame(width: 60, height: 80)
                                            }
                                        )
                                    } .ignoresSafeArea()
                                }
                            }
                        }.font(.custom("MUA_Office_adobe", size: 12))
                    }
                    .navigationTitle("အဘိဓရ်")
                    .navigationBarTitleDisplayMode(.inline)
                    .phoneOnlyStackNavigationView()
                }
                ProgressView(value: self.$progressValue, visible: self.$loadingPDF)
            }
        }
    }

struct Abhidhamma_Previews: PreviewProvider {
    static var previews: some View {
        Abhidhamma()
    }
}
