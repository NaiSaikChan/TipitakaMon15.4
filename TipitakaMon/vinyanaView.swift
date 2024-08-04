//
//  vinyanaView.swift
//  TipitakaMon
//
//  Created by Silarcara on 28/7/24.
//

import SwiftUI
import PDFViewer


struct VinayaBasket: Identifiable {
        var id = UUID()
        var title: String;
        var subtitle: String;
        var imageName: String;
        var fileName: String
    
    static var `default` = Self(title: "ပါဠိပါရာဇိကဏ် ဘာသာမန်", subtitle: "မူဆဋ္ဌသံဂါယန ဝိနယပိဋကတ် ခုဒ္ဒကနိကာယ်", imageName: "TripitakaMon16", fileName: Bundle.main.path(forResource: "ပါဠိပါရာဇိကဏ် ဘာသာမန်", ofType: "pdf")!)
}

// VinayaBasket 5 books

let dataVinyana = [
    VinayaBasket(title: "ပါဠိပါရာဇိကဏ် ဘာသာမန်", subtitle: "မူဆဋ္ဌသံဂါယန ဝိနယပိဋကတ် ခုဒ္ဒကနိကာယ်", imageName: "TripitakaMon16", fileName: Bundle.main.path(forResource: "ပါဠိပါရာဇိကဏ် ဘာသာမန်", ofType: "pdf")!),
            VinayaBasket(title: "ပါဠိပါဲစိုတ် ဘာသာမန်", subtitle: "မူဆဋ္ဌသံဂါယန ဝိနယပိဋကတ် ခုဒ္ဒကနိကာယ်", imageName: "TripitakaMon18", fileName: Bundle.main.path(forResource: "ပါဠိပါဲစိုတ် ဘာသာမန်", ofType: "pdf")!),
            VinayaBasket(title: "ပါဠိမဟာဝဂ် ဘာသာမန်", subtitle: "မူဆဋ္ဌသံဂါယန ဝိနယပိဋကတ် ခုဒ္ဒကနိကာယ်", imageName: "TripitakaMon15", fileName: Bundle.main.path(forResource: "ပါဠိမဟာဝဂ် ဘာသာမန်", ofType: "pdf")!),
            VinayaBasket(title: "ပါဠိစူဠဝဝ် ဘာသာမန်", subtitle: "မူဆဋ္ဌသံဂါယန ဝိနယပိဋကတ် ခုဒ္ဒကနိကာယ်", imageName: "TripitakaMon19", fileName: Bundle.main.path(forResource: "ပါဠိစူဠဝဝ် ဘာသာမန်", ofType: "pdf")!),
            VinayaBasket(title: "ပါဠိပရိဝရ် ဘာသာမန်", subtitle: "မူဆဋ္ဌသံဂါယန ဝိနယပိဋကတ် ခုဒ္ဒကနိကာယ်", imageName: "TripitakaMon17", fileName: Bundle.main.path(forResource: "ပါဠိပရိဝရ် ဘာသာမန်", ofType: "pdf")!)

]

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
    
    
    var Vinaya : [VinayaBasket] = dataVinyana
    
    var body: some View{
        
        NavigationView{
            
            List{
                ForEach(Vinaya) { item in
                    Section(header: Text(item.subtitle)){
                        NavigationLink(destination: PDFViewer(pdfName: item.title, pdfUrlString: item.fileName)){
                            Label(
                                title: {
                                    Text(item.title)
                                        .font(.custom("Pyidaungsu", size: 18))
                                        .padding(10)
                                        .bold()
                                    
                                },
                                icon: { Image(item.imageName)
                                        .resizable()
                                        .frame(width: 60, height: 80)
                                }
                            )
                        } .ignoresSafeArea()
                    }
                }.font(.custom("MUA_Office_adobe", size: 12))
            }
            .navigationTitle("ဝိိနိယ်")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    vinyanaView()
}

