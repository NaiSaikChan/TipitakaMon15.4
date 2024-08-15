//
//  vinyanaView.swift
//  TipitakaMon
//
//  Created by Saik Chan on 28/7/24.
//

import SwiftUI
import PDFViewer

struct vinyanaView : View, DownloadManagerDelegate {
    
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
    
    @State private var showInfoView = false
    var Vinaya : [Basket] = vinyanaBook
    
    var body: some View{
        
        NavigationView{
            
            VStack{
                List{
                    ForEach(Vinaya) { basket in
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
                .navigationTitle("ဝိနယပိဋကတ်")
                .navigationBarTitleDisplayMode(.inline)
                
                .phoneOnlyStackNavigationView()
            }
        }
    }
}

extension View {
    func phoneOnlyStackNavigationView() -> some View {
        if UIDevice.current.userInterfaceIdiom == .pad {
            return AnyView(self.navigationViewStyle(StackNavigationViewStyle()))
        }else{
            return AnyView(self)
        }
    }
}

#Preview {
    vinyanaView()
}

