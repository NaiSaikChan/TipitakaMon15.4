//
//  sutaView.swift
//  TipitakaMon
//
//  Created by Silarcara on 28/7/24.
//

import SwiftUI
import PDFViewer


struct SuttaBasket: Identifiable {
    
    var id = UUID()
    var title: String;
    var subtitle: String;
    var version: String;
    var imageName: String;
    var fileName: String
}

// SuttaBasket 18 books

let dataSutta = [
    SuttaBasket(title: "ပါဠိသဳလက္ခန္ဓဝဂ္ဂ ဘာသာမန်", subtitle: "", version: "မူဆဋ္ဌသံဂါယန သုတ္တန္တပိဋကတ် ဒဳဃနိကာယ်", imageName: "TripitakaMon3", fileName: Bundle.main.path(forResource: "TripitakaMon3", ofType: "pdf")!),
    SuttaBasket(title: "ပါဠိမဟာဝဂ္ဂ ဘာသာမန်", subtitle: "", version: "မူဆဋ္ဌသံဂါယန သုတ္တန္တပိဋကတ် ဒဳဃနိကာယ်", imageName: "TripitakaMon1", fileName: Bundle.main.path(forResource: "TripitakaMon1", ofType: "pdf")!),
    SuttaBasket(title: "ပါဠိပါထိကဝဂ် ဘာသာမန်", subtitle: "", version: "မူဆဋ္ဌသံဂါယန သုတ္တန္တပိဋကတ် ဒဳဃနိကာယ်", imageName: "TripitakaMon2", fileName: Bundle.main.path(forResource: "TripitakaMon2", ofType: "pdf")!),
    SuttaBasket(title: "ပါဠိမူလပဏ္ဏာသ ဘာသာမန်", subtitle: "", version: "မူဆဋ္ဌသံဂါယန သုတ္တန္တပိဋကတ် မဇ္ၛိမနိကာယ်", imageName: "TripitakaMon7", fileName: Bundle.main.path(forResource: "TripitakaMon7", ofType: "pdf")!),
    SuttaBasket(title: "ပါဠိမဇ္ၛိမပဏ္ဏာသ ဘာသာမန်", subtitle: "", version: "မူဆဋ္ဌသံဂါယန သုတ္တန္တပိဋကတ် မဇ္ၛိမနိကာယ်", imageName: "TripitakaMon8", fileName: Bundle.main.path(forResource: "TripitakaMon8", ofType: "pdf")!),
    SuttaBasket(title: "ပါဠိဥပရိပဏ္ဏာသ ဘာသာမန်", subtitle: "", version: "မူဆဋ္ဌသံဂါယန သုတ္တန္တပိဋကတ် မဇ္ၛိမနိကာယ်", imageName: "TripitakaMon9", fileName: Bundle.main.path(forResource: "TripitakaMon9", ofType: "pdf")!),
    SuttaBasket(title: "ပါဠိသံယုတ် ဘာသာမန် (ကၞပ်ပထမ)", subtitle: "သဂါထာဝဂ် ကေုာံ နိဒါနဝဂ်", version: "မူဆဋ္ဌသံဂါယန သုတ္တန္တပိဋကတ် သံယုတ္တနိကာယ်", imageName: "TripitakaMon12", fileName: Bundle.main.path(forResource: "TripitakaMon12", ofType: "pdf")!),
    SuttaBasket(title: "ပါဠိသံယုတ် ဘာသာမန် (ကၞပ်ဒုတိယ)", subtitle: "ခန္ဓဝဂ် ကေုာံ သဠာယတနဝဂ်", version: "မူဆဋ္ဌသံဂါယန သုတ္တန္တပိဋကတ် သံယုတ္တနိကာယ်", imageName: "TripitakaMon13", fileName: Bundle.main.path(forResource: "TripitakaMon13", ofType: "pdf")!),
    SuttaBasket(title: "ပါဠိသံယုတ် ဘာသာမန် (ကၞပ်တတိယ)", subtitle: "မဟာဝဂ္ဂ", version: "မူဆဋ္ဌသံဂါယန သုတ္တန္တပိဋကတ် သံယုတ္တနိကာယ်", imageName: "TripitakaMon14", fileName: Bundle.main.path(forResource: "TripitakaMon14", ofType: "pdf")!),
    SuttaBasket(title: "ပါဠိအၚ်္ဂုတ္တိုရ် ဘာသာမန် (ကၞပ်ပထမ)", subtitle: "ဨကက၊ ဒုက၊ တိက၊ စတုတ္ထနိပါတ်", version: "မူဆဋ္ဌသံဂါယန သုတ္တန္တပိဋကတ် အၚ်္ဂုတ္တရနိကာယ်", imageName: "TripitakaMon4", fileName: Bundle.main.path(forResource: "TripitakaMon4", ofType: "pdf")!),
    SuttaBasket(title: "ပါဠိအၚ်္ဂုတ္တိုရ် ဘာသာမန် (ကၞပ်ဒုတိယ)", subtitle: "ပဉ္စက၊ ဆက္က၊ သတ္တကနိပါတ်", version: "မူဆဋ္ဌသံဂါယန သုတ္တန္တပိဋကတ် အၚ်္ဂုတ္တရနိကာယ်", imageName: "TripitakaMon5", fileName: Bundle.main.path(forResource: "TripitakaMon5", ofType: "pdf")!),
    SuttaBasket(title: "ပါဠိအၚ်္ဂုတ္တိုရ် ဘာသာမန် (ကၞပ်တတိယ)", subtitle: "အဋ္ဌက၊ နဝက၊ ဒသက၊ ဨကာဒသကနိပါတ်", version: "မူဆဋ္ဌသံဂါယန သုတ္တန္တပိဋကတ် အၚ်္ဂုတ္တရနိကာယ်", imageName: "TripitakaMon6", fileName: Bundle.main.path(forResource: "TripitakaMon6", ofType: "pdf")!),
    SuttaBasket(title: "ပါဠိခုဒ္ဒကပါဋ္ဌ ဘာသာမန်", subtitle: "ခုဒ္ဒကပါဌ၊ ဓမ္မပဒ၊ ဥဒါန၊ ဣတိဝုတ္တက၊ သုတ္တနိပါတ်", version: "မူဆဋ္ဌသံဂါယန သုတ္တန္တပိဋကတ် ခုဒ္ဒကနိကာယ်", imageName: "TripitakaMon23", fileName: Bundle.main.path(forResource: "TripitakaMon23", ofType: "pdf")!),
    SuttaBasket(title: "ပါဠိဝိမာန ကေုာံ ပေတဝတ္ထု ဘာသာမန်", subtitle: "", version: "မူဆဋ္ဌသံဂါယန သုတ္တန္တပိဋကတ် ခုဒ္ဒကနိကာယ်", imageName: "TripitakaMon22", fileName: Bundle.main.path(forResource: "TripitakaMon22", ofType: "pdf")!),
    SuttaBasket(title: "ပါဠိပဋိသမ္ဘီဒါမဂ် ဘာသာမန်", subtitle: "", version: "မူဆဋ္ဌသံဂါယန သုတ္တန္တပိဋကတ် ခုဒ္ဒကနိကာယ်", imageName: "TripitakaMon10", fileName: Bundle.main.path(forResource: "TripitakaMon10", ofType: "pdf")!),
    SuttaBasket(title: "ပါဠိထေရာပဒါန် ဘာသာမန်", subtitle: "ကၞပ်(ပ+ဒု)", version: "မူဆဋ္ဌသံဂါယန သုတ္တန္တပိဋကတ် ခုဒ္ဒကနိကာယ်", imageName: "TripitakaMon24", fileName: Bundle.main.path(forResource: "TripitakaMon24", ofType: "pdf")!),
    SuttaBasket(title: "ပါဠိထေရထေရဳဂါထာ ဘာသာမန်", subtitle: "", version: "မူဆဋ္ဌသံဂါယန သုတ္တန္တပိဋကတ် ခုဒ္ဒကနိကာယ်", imageName: "TripitakaMon20", fileName: Bundle.main.path(forResource: "TripitakaMon20", ofType: "pdf")!),
    SuttaBasket(title: "ပါဠိမိလိန္ဒပဉှာ ဘာသာမန်", subtitle: "", version: "မူဆဋ္ဌသံဂါယန သုတ္တန္တပိဋကတ် ခုဒ္ဒကနိကာယ်", imageName: "TripitakaMon21", fileName: Bundle.main.path(forResource: "TripitakaMon21", ofType: "pdf")!)
]




struct sutaView: View {
    
    var Sutta : [SuttaBasket] = dataSutta
    
    var body: some View {
        NavigationView{
            
            List{
                ForEach(Sutta) { basket in
                    
                    Section(header: Text(basket.version)){
                        NavigationLink(destination: PDFViewer(pdfName: basket.title, pdfUrlString: basket.fileName)){
                            Label(
                                title: {
                                    Text(basket.title)
                                        .font(.custom("Pyidaungsu", size: 18))
                                        .padding(10)
                                        .bold()
                                    
                                },
                                icon: { Image(basket.imageName)
                                        .resizable()
                                        .frame(width: 60, height: 80)
                                }
                            )
                        }
                    }
                }.font(.custom("MUA_Office_adobe", size: 12))
            }
                .navigationTitle("သုတ်")
                .navigationBarTitleDisplayMode(.inline)
                
        }
    }
}

#Preview {
    sutaView()
}
