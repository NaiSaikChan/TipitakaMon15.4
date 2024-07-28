//
//  Abhidhamma.swift
//  TipitakaMonSwiftUI
//
//  Created by Saik  Chan on 9/5/20.
//  Copyright © 2020 Saik  Chan. All rights reserved.
//

import SwiftUI
import PDFViewer

struct AbhidhammaBasket: Identifiable {
    
    var id = UUID()
    var title: String;
    var subtitle: String;
    var imageName: String;
    var fileName: String
}

// VinayaBasket 5 books

let dataAbhidhamma = [
    AbhidhammaBasket(title: "ပါဠိဓမ္မသၚ်္ဂဏဳ ဘာသာမန်", subtitle: "မူဆဋ္ဌသံဂါယန အဘိဓမ္မပိဋကတ် ခုဒ္ဒကနိကာယ်", imageName: "TripitakaMon28", fileName: Bundle.main.path(forResource: "ပါဠိဓမ္မသၚ်္ဂဏဳ ဘာသာမန်", ofType: "pdf")!),
    AbhidhammaBasket(title: "ပါဠိဝိဘၚ် ဘာသာမန် (ကၞပ် ပ+ဒု)", subtitle: "မူဆဋ္ဌသံဂါယန အဘိဓမ္မပိဋကတ် ခုဒ္ဒကနိကာယ်", imageName: "TripitakaMon27", fileName: Bundle.main.path(forResource: "ပါဠိဝိဘၚ် ဘာသာမန် (ကၞပ် ပ+ဒု)", ofType: "pdf")!),
    AbhidhammaBasket(title: "ပါဠိကထာဝတ္ထု ဘာသာမန် (ကၞပ်ပထမ)", subtitle: "မူဆဋ္ဌသံဂါယန အဘိဓမ္မပိဋကတ် ခုဒ္ဒကနိကာယ်", imageName: "TripitakaMon25", fileName: Bundle.main.path(forResource: "ပါဠိကထာဝတ္ထု ဘာသာမန် (ကၞပ်ပထမ)", ofType: "pdf")!),
    AbhidhammaBasket(title: "ပါဠိကထာဝတ္ထု ဘာသာမန် (ကၞပ်ဒုတိယ)", subtitle: "မူဆဋ္ဌသံဂါယန အဘိဓမ္မပိဋကတ် ခုဒ္ဒကနိကာယ်", imageName: "TripitakaMon26", fileName: Bundle.main.path(forResource: "ပါဠိကထာဝတ္ထု ဘာသာမန် (ကၞပ်ဒုတိယ)", ofType: "pdf")!),
    AbhidhammaBasket(title: "ပါဠိပုဂ္ဂလပညပ် ဘာသာမန်", subtitle: "မူဆဋ္ဌသံဂါယန အဘိဓမ္မပိဋကတ် ခုဒ္ဒကနိကာယ်", imageName: "TripitakaMon11", fileName: Bundle.main.path(forResource: "ပါဠိပုဂ္ဂလပညပ် ဘာသာမန်", ofType: "pdf")!)
]

struct Abhidhamma : View {
    
    //var Abhidhamma = [dataAbhidhamma]
    var Abhid : [AbhidhammaBasket] = dataAbhidhamma
    
    var body : some View{
        
        NavigationView{
            
            List{
                ForEach(Abhid) { item in
                    Section(header: Text(item.subtitle)){
                        NavigationLink(destination: PDFViewer(pdfName: item.title, pdfUrlString: item.fileName)){
                            Label(
                                title: {
                                    Text(item.title)
                                        .font(.custom("Pyidaungsu", size: 18))
                                        .font(.title)
                                        .padding(10)
                                        .bold()
                                    
                                },
                                icon: { Image(item.imageName)
                                        .resizable()
                                        .frame(width: 60, height: 80)
                                }
                            )
                        }
                    }
                }.font(.custom("MUA_Office_adobe", size: 12))
            }
            .navigationTitle("အဘိဓရ်")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct Abhidhamma_Previews: PreviewProvider {
    static var previews: some View {
        Abhidhamma()
    }
}
