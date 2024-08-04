//
//  SuttaViewL.swift
//  TipitakaMon
//
//  Created by Silarcara on 29/7/24.
//

import SwiftUI
import PDFViewer

struct Family: Identifiable {
    var id = UUID()
    var familyName: String
    var characters: [Sutta_Basket] = []
}

struct Character: Identifiable {
    var id = UUID()
    var name: String
    
    static var `default` = Self(name: "Jon Snow")
}

struct Sutta_Basket: Identifiable {
    
    var id = UUID()
    var title: String;
    var subtitle: String;
    var imageName: String;
    var fileName: String
    
    static var `default` = Self(title: "ပါဠိသဳလက္ခန္ဓဝဂ္ဂ ဘာသာမန်", subtitle: "", imageName: "TripitakaMon3", fileName: Bundle.main.path(forResource: "TripitakaMon3", ofType: "pdf")!)
}

struct SuttaViewL: View {
    @State private var families = [
        Family(familyName: "မူဆဋ္ဌသံဂါယန သုတ္တန္တပိဋကတ် ဒဳဃနိကာယ်", characters: [
            Sutta_Basket(title: "ပါဠိသဳလက္ခန္ဓဝဂ္ဂ ဘာသာမန်", subtitle: "", imageName: "TripitakaMon3", fileName: Bundle.main.path(forResource: "TripitakaMon3", ofType: "pdf")!),
            Sutta_Basket(title: "ပါဠိမဟာဝဂ္ဂ ဘာသာမန်", subtitle: "", imageName: "TripitakaMon1", fileName: Bundle.main.path(forResource: "TripitakaMon1", ofType: "pdf")!),
            Sutta_Basket(title: "ပါဠိပါထိကဝဂ် ဘာသာမန်", subtitle: "", imageName: "TripitakaMon2", fileName: Bundle.main.path(forResource: "TripitakaMon2", ofType: "pdf")!)
        ]),
        Family(familyName: "မူဆဋ္ဌသံဂါယန သုတ္တန္တပိဋကတ် မဇ္ၛိမနိကာယ်", characters: [
            Sutta_Basket(title: "ပါဠိမူလပဏ္ဏာသ ဘာသာမန်", subtitle: "", imageName: "TripitakaMon7", fileName: Bundle.main.path(forResource: "TripitakaMon7", ofType: "pdf")!),
            Sutta_Basket(title: "ပါဠိမဇ္ၛိမပဏ္ဏာသ ဘာသာမန်", subtitle: "", imageName: "TripitakaMon8", fileName: Bundle.main.path(forResource: "TripitakaMon8", ofType: "pdf")!),
            Sutta_Basket(title: "ပါဠိဥပရိပဏ္ဏာသ ဘာသာမန်", subtitle: "", imageName: "TripitakaMon9", fileName: Bundle.main.path(forResource: "TripitakaMon9", ofType: "pdf")!)
        ]),
        Family(familyName: "မူဆဋ္ဌသံဂါယန သုတ္တန္တပိဋကတ် သံယုတ္တနိကာယ်", characters: [
            Sutta_Basket(title: "ပါဠိသံယုတ် ဘာသာမန် (ကၞပ်ပထမ)", subtitle: "သဂါထာဝဂ် ကေုာံ နိဒါနဝဂ်", imageName: "TripitakaMon12", fileName: Bundle.main.path(forResource: "TripitakaMon12", ofType: "pdf")!),
            Sutta_Basket(title: "ပါဠိသံယုတ် ဘာသာမန် (ကၞပ်ဒုတိယ)", subtitle: "ခန္ဓဝဂ် ကေုာံ သဠာယတနဝဂ်", imageName: "TripitakaMon13", fileName: Bundle.main.path(forResource: "TripitakaMon13", ofType: "pdf")!),
            Sutta_Basket(title: "ပါဠိသံယုတ် ဘာသာမန် (ကၞပ်တတိယ)", subtitle: "မဟာဝဂ္ဂ", imageName: "TripitakaMon14", fileName: Bundle.main.path(forResource: "TripitakaMon14", ofType: "pdf")!)
        ]),
        Family(familyName: "မူဆဋ္ဌသံဂါယန သုတ္တန္တပိဋကတ် အၚ်္ဂုတ္တရနိကာယ်", characters: [
            Sutta_Basket(title: "ပါဠိအၚ်္ဂုတ္တိုရ် ဘာသာမန် (ကၞပ်ပထမ)", subtitle: "ဨကက၊ ဒုက၊ တိက၊ စတုတ္ထနိပါတ်", imageName: "TripitakaMon4", fileName: Bundle.main.path(forResource: "TripitakaMon4", ofType: "pdf")!),
            Sutta_Basket(title: "ပါဠိအၚ်္ဂုတ္တိုရ် ဘာသာမန် (ကၞပ်ဒုတိယ)", subtitle: "ပဉ္စက၊ ဆက္က၊ သတ္တကနိပါတ်", imageName: "TripitakaMon5", fileName: Bundle.main.path(forResource: "TripitakaMon5", ofType: "pdf")!),
            Sutta_Basket(title: "ပါဠိအၚ်္ဂုတ္တိုရ် ဘာသာမန် (ကၞပ်တတိယ)", subtitle: "အဋ္ဌက၊ နဝက၊ ဒသက၊ ဨကာဒသကနိပါတ်", imageName: "TripitakaMon4", fileName: Bundle.main.path(forResource: "TripitakaMon4", ofType: "pdf")!)
        ]),
        Family(familyName: "မူဆဋ္ဌသံဂါယန သုတ္တန္တပိဋကတ် ခုဒ္ဒကနိကာယ်", characters: [
            Sutta_Basket(title: "ပါဠိခုဒ္ဒကပါဋ္ဌ ဘာသာမန်", subtitle: "ခုဒ္ဒကပါဌ၊ ဓမ္မပဒ၊ ဥဒါန၊ ဣတိဝုတ္တက၊ သုတ္တနိပါတ်", imageName: "TripitakaMon23", fileName: Bundle.main.path(forResource: "TripitakaMon23", ofType: "pdf")!),
            Sutta_Basket(title: "ပါဠိဝိမာန ကေုာံ ပေတဝတ္ထု ဘာသာမန်", subtitle: "", imageName: "TripitakaMon22", fileName: Bundle.main.path(forResource: "TripitakaMon22", ofType: "pdf")!),
            Sutta_Basket(title: "ပါဠိပဋိသမ္ဘီဒါမဂ် ဘာသာမန်", subtitle: "", imageName: "TripitakaMon10", fileName: Bundle.main.path(forResource: "TripitakaMon10", ofType: "pdf")!),
            Sutta_Basket(title: "ပါဠိထေရာပဒါန် ဘာသာမန်", subtitle: "ကၞပ်(ပ+ဒု)", imageName: "TripitakaMon24", fileName: Bundle.main.path(forResource: "TripitakaMon24", ofType: "pdf")!),
            Sutta_Basket(title: "ပါဠိထေရထေရဳဂါထာ ဘာသာမန်", subtitle: "", imageName: "TripitakaMon20", fileName: Bundle.main.path(forResource: "TripitakaMon20", ofType: "pdf")!),
            Sutta_Basket(title: "ပါဠိမိလိန္ဒပဉှာ ဘာသာမန်", subtitle: "", imageName: "TripitakaMon21", fileName: Bundle.main.path(forResource: "TripitakaMon21", ofType: "pdf")!)
        ])
    ]
    
    
    var body: some View {
        
        NavigationView{
            List {
                ForEach(families) { family in
                    Section(header: Text(family.familyName)) {
                        ForEach(family.characters) { character in
                            NavigationLink(destination: PDFViewer(pdfName: character.title, pdfUrlString: character.fileName)){
                                Label(
                                    title: {
                                        Text(character.title)
                                            .font(.custom("Pyidaungsu", size: 18))
                                            .padding(10)
                                            .bold()
                                        
                                    },
                                    icon: { Image(character.imageName)
                                            .resizable()
                                            .frame(width: 60, height: 80)
                                    }
                                    
                                )
                                
                            }
                        }
                    }.font(.custom("MUA_Office_adobe", size: 12))
                }.font(.custom("Pyidaungsu", size: 18))
            }.navigationTitle("သုတ်")
                .navigationBarTitleDisplayMode(.inline)
        }

    }
}


#Preview {
    SuttaViewL()
}
