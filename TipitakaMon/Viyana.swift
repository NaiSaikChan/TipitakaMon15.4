//
//  Viyana.swift
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
    var bookCover: String;
    var bookFile: String
}

/// VinayaBasket 5
    let dataOfVinaya = [
            VinayaBasket(title: "ပါဠိပါရာဇိကဏ် ဘာသာမန်", subtitle: "မူဆဋ္ဌသံဂါယန ဝိနယပိဋကတ် ခုဒ္ဒကနိကာယ်", bookCover: "TripitakaMon16", bookFile: Bundle.main.path(forResource: "ပါဠိပါရာဇိကဏ် ဘာသာမန်", ofType: "pdf")!),
                VinayaBasket(title: "ပါဠိပါဲစိုတ် ဘာသာမန်", subtitle: "မူဆဋ္ဌသံဂါယန ဝိနယပိဋကတ် ခုဒ္ဒကနိကာယ်", bookCover: "TripitakaMon18", bookFile: Bundle.main.path(forResource: "ပါဠိပါဲစိုတ် ဘာသာမန်", ofType: "pdf")!),
                VinayaBasket(title: "ပါဠိမဟာဝဂ် ဘာသာမန်", subtitle: "မူဆဋ္ဌသံဂါယန ဝိနယပိဋကတ် ခုဒ္ဒကနိကာယ်", bookCover: "TripitakaMon15", bookFile: Bundle.main.path(forResource: "ပါဠိမဟာဝဂ် ဘာသာမန်", ofType: "pdf")!),
                VinayaBasket(title: "ပါဠိစူဠဝဝ် ဘာသာမန်", subtitle: "မူဆဋ္ဌသံဂါယန ဝိနယပိဋကတ် ခုဒ္ဒကနိကာယ်", bookCover: "TripitakaMon19", bookFile: Bundle.main.path(forResource: "ပါဠိစူဠဝဝ် ဘာသာမန်", ofType: "pdf")!),
                VinayaBasket(title: "ပါဠိပရိဝရ် ဘာသာမန်", subtitle: "မူဆဋ္ဌသံဂါယန ဝိနယပိဋကတ် ခုဒ္ဒကနိကာယ်", bookCover: "TripitakaMon17", bookFile: Bundle.main.path(forResource: "ပါဠိပရိဝရ် ဘာသာမန်", ofType: "pdf")!)
    ]

struct pdfView: View, DownloadManagerDelegate {
    
    @State private var viewLocalPDF = false
    @State private var viewRemotePDF = false
    @State private var loadingPDF: Bool = false
    @State private var progressValue: Float = 0.0
    @ObservedObject var downloadManager = DownloadManager.shared()
    var Vinaya : [VinayaBasket] = dataOfVinaya
    
    let pdfName = "sample"
    let pdfUrlString = "http://www.africau.edu/images/default/sample.pdf"

    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Text("Saik")
                }
                ProgressView(value: self.$progressValue, visible: self.$loadingPDF)
            }
            .navigationBarTitle("PDFViewer", displayMode: .inline)
        }
    }
    
    private func fileExistsInDirectory() -> Bool {
        if let cachesDirectoryUrl =  FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask).first, let lastPathComponent = URL(string: self.pdfUrlString)?.lastPathComponent {
            let url = cachesDirectoryUrl.appendingPathComponent(lastPathComponent)
            if FileManager.default.fileExists(atPath: url.path) {
                return true
            }
        }
        return false
    }
    
    private func downloadPDF(pdfUrlString: String) {
        guard let url = URL(string: pdfUrlString) else { return }
        downloadManager.delegate = self
        downloadManager.downloadFile(url: url)
    }
    
    //MARK: DownloadManagerDelegate
    func downloadDidFinished(success: Bool) {
        if success {
            loadingPDF = false
            viewRemotePDF = true
        }
    }
    
    func downloadDidFailed(failure: Bool) {
        if failure {
            loadingPDF = false
            print("PDFCatalogueView: Download failure")
        }
    }
    
    func downloadInProgress(progress: Float, totalBytesWritten: Float, totalBytesExpectedToWrite: Float) {
        loadingPDF = true
        progressValue = progress
    }
}

struct Vinyana_Previews: PreviewProvider{
    static var previews: some View{
        pdfView()
    }
}


struct Viyana: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    pdfView()
}
