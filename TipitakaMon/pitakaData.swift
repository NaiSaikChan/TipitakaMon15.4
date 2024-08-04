//
//  pitakaData.swift
//  TipitakaMon
//
//  Created by Silarcara on 4/8/24.
//

import Foundation

struct Basket: Identifiable {
    var id = UUID()
    var basketName: String
    var bookTitle: [pitakaData] = []
}

struct Book: Identifiable {
    var id = UUID()
    var name: String
    static var `default` = Self(name: "ပါဠိပါရာဇိကဏ် ဘာသာမန်")
}

struct pitakaData: Identifiable {
    var id = UUID()
    var title: String;
    var subtitle: String;
    var imageName: String;
    var fileName: String;
    var url: URL?
    
    static var `default` = Self(title: "ပါဠိပါရာဇိကဏ် ဘာသာမန်", subtitle: "မူဆဋ္ဌသံဂါယန ဝိနယပိဋကတ် ခုဒ္ဒကနိကာယ်", imageName: "TripitakaMon16", fileName: Bundle.main.path(forResource: "ပါဠိပါရာဇိကဏ် ဘာသာမန်", ofType: "pdf")!, url: Bundle.main.url(forResource: "ပါဠိပါရာဇိကဏ် ဘာသာမန်", withExtension: "pdf")!)
}

var vinyanaBook = [
    Basket(basketName: "မူဆဋ္ဌသံဂါယန ဝိနယပိဋကတ် ခုဒ္ဒကနိကာယ်", bookTitle: [
        pitakaData(title: "ပါဠိပါရာဇိကဏ် ဘာသာမန်", subtitle: "", imageName: "TripitakaMon16", fileName: Bundle.main.path(forResource: "ပါဠိပါရာဇိကဏ် ဘာသာမန်", ofType: "pdf")!, url: Bundle.main.url(forResource: "ပါဠိပါရာဇိကဏ် ဘာသာမန်", withExtension: "pdf")!),
        pitakaData(title: "ပါဠိပါဲစိုတ် ဘာသာမန်", subtitle: "", imageName: "TripitakaMon18", fileName: Bundle.main.path(forResource: "ပါဠိပါဲစိုတ် ဘာသာမန်", ofType: "pdf")!, url: Bundle.main.url(forResource: "ပါဠိပါဲစိုတ် ဘာသာမန်", withExtension: "pdf")!),
        pitakaData(title: "ပါဠိမဟာဝဂ် ဘာသာမန်", subtitle: "", imageName: "TripitakaMon15", fileName: Bundle.main.path(forResource: "ပါဠိမဟာဝဂ် ဘာသာမန်", ofType: "pdf")!, url: Bundle.main.url(forResource: "ပါဠိမဟာဝဂ် ဘာသာမန်", withExtension: "pdf")!),
        pitakaData(title: "ပါဠိစူဠဝဝ် ဘာသာမန်", subtitle: "", imageName: "TripitakaMon19", fileName: Bundle.main.path(forResource: "ပါဠိစူဠဝဝ် ဘာသာမန်", ofType: "pdf")!, url: Bundle.main.url(forResource: "ပါဠိစူဠဝဝ် ဘာသာမန်", withExtension: "pdf")!),
        pitakaData(title: "ပါဠိပရိဝရ် ဘာသာမန်", subtitle: "", imageName: "TripitakaMon17", fileName: Bundle.main.path(forResource: "ပါဠိပရိဝရ် ဘာသာမန်", ofType: "pdf")!, url: Bundle.main.url(forResource: "ပါဠိပရိဝရ် ဘာသာမန်", withExtension: "pdf")!)
    ]
          )
]



let suttaBook = [
    Basket(basketName: "မူဆဋ္ဌသံဂါယန သုတ္တန္တပိဋကတ် ဒဳဃနိကာယ်", bookTitle: [
        pitakaData(title: "ပါဠိသဳလက္ခန္ဓဝဂ္ဂ ဘာသာမန်", subtitle: "", imageName: "TripitakaMon3", fileName: Bundle.main.path(forResource: "ပါဠိသဳလက္ခန္ဓဝဂ္ဂ ဘာသာမန်", ofType: "pdf")!, url: Bundle.main.url(forResource: "ပါဠိသဳလက္ခန္ဓဝဂ္ဂ ဘာသာမန်", withExtension: "pdf")!),
                pitakaData(title: "ပါဠိမဟာဝဂ္ဂ ဘာသာမန်", subtitle: "", imageName: "TripitakaMon1", fileName: Bundle.main.path(forResource: "ပါဠိမဟာဝဂ္ဂ ဘာသာမန်", ofType: "pdf")!, url: Bundle.main.url(forResource: "ပါဠိမဟာဝဂ္ဂ ဘာသာမန်", withExtension: "pdf")!),
                pitakaData(title: "ပါဠိပါထိကဝဂ် ဘာသာမန်", subtitle: "", imageName: "TripitakaMon2", fileName: Bundle.main.path(forResource: "ပါဠိပါထိကဝဂ် ဘာသာမန်", ofType: "pdf")!, url: Bundle.main.url(forResource: "ပါဠိပါထိကဝဂ် ဘာသာမန်", withExtension: "pdf")!)
    ]),
        Basket(basketName: "မူဆဋ္ဌသံဂါယန သုတ္တန္တပိဋကတ် မဇ္ၛိမနိကာယ်", bookTitle: [
                pitakaData(title: "ပါဠိမူလပဏ္ဏာသ ဘာသာမန်", subtitle: "", imageName: "TripitakaMon7", fileName: Bundle.main.path(forResource: "ပါဠိမူလပဏ္ဏာသ ဘာသာမန်", ofType: "pdf")!, url: Bundle.main.url(forResource: "ပါဠိမူလပဏ္ဏာသ ဘာသာမန်", withExtension: "pdf")!),
                pitakaData(title: "ပါဠိမဇ္ၛိမပဏ္ဏာသ ဘာသာမန်", subtitle: "", imageName: "TripitakaMon8", fileName: Bundle.main.path(forResource: "ပါဠိမဇ္ၛိမပဏ္ဏာသ ဘာသာမန်", ofType: "pdf")!, url: Bundle.main.url(forResource: "ပါဠိမဇ္ၛိမပဏ္ဏာသ ဘာသာမန်", withExtension: "pdf")!),
                pitakaData(title: "ပါဠိဥပရိပဏ္ဏာသ ဘာသာမန်", subtitle: "", imageName: "TripitakaMon9", fileName: Bundle.main.path(forResource: "ပါဠိဥပရိပဏ္ဏာသ ဘာသာမန်", ofType: "pdf")!, url: Bundle.main.url(forResource: "ပါဠိဥပရိပဏ္ဏာသ ဘာသာမန်", withExtension: "pdf")!)
    ]),
        Basket(basketName: "မူဆဋ္ဌသံဂါယန သုတ္တန္တပိဋကတ် သံယုတ္တနိကာယ်", bookTitle: [
                pitakaData(title: "ပါဠိသံယုတ် ဘာသာမန် (ကၞပ်ပထမ)", subtitle: "သဂါထာဝဂ် ကေုာံ နိဒါနဝဂ်", imageName: "TripitakaMon12", fileName: Bundle.main.path(forResource: "ပါဠိသံယုတ် ဘာသာမန် (ကၞပ်ပထမ)", ofType: "pdf")!, url: Bundle.main.url(forResource: "ပါဠိသံယုတ် ဘာသာမန် (ကၞပ်ပထမ)", withExtension: "pdf")!),
                pitakaData(title: "ပါဠိသံယုတ် ဘာသာမန် (ကၞပ်ဒုတိယ)", subtitle: "ခန္ဓဝဂ် ကေုာံ သဠာယတနဝဂ်", imageName: "TripitakaMon13", fileName: Bundle.main.path(forResource: "ပါဠိသံယုတ် ဘာသာမန် (ကၞပ်ဒုတိယ)", ofType: "pdf")!, url: Bundle.main.url(forResource: "ပါဠိသံယုတ် ဘာသာမန် (ကၞပ်ဒုတိယ)", withExtension: "pdf")!),
                pitakaData(title: "ပါဠိသံယုတ် ဘာသာမန် (ကၞပ်တတိယ)", subtitle: "မဟာဝဂ္ဂ", imageName: "TripitakaMon14", fileName: Bundle.main.path(forResource: "ပါဠိသံယုတ် ဘာသာမန် (ကၞပ်တတိယ)", ofType: "pdf")!, url: Bundle.main.url(forResource: "ပါဠိသံယုတ် ဘာသာမန် (ကၞပ်တတိယ)", withExtension: "pdf")!)
    ]),
        Basket(basketName: "မူဆဋ္ဌသံဂါယန သုတ္တန္တပိဋကတ် အၚ်္ဂုတ္တရနိကာယ်", bookTitle: [
                pitakaData(title: "ပါဠိအၚ်္ဂုတ္တိုရ် ဘာသာမန် (ကၞပ်ပထမ)", subtitle: "ဨကက၊ ဒုက၊ တိက၊ စတုတ္ထနိပါတ်", imageName: "TripitakaMon4", fileName: Bundle.main.path(forResource: "ပါဠိအၚ်္ဂုတ္တိုရ် ဘာသာမန် (ကၞပ်ပထမ)", ofType: "pdf")!, url: Bundle.main.url(forResource: "ပါဠိအၚ်္ဂုတ္တိုရ် ဘာသာမန် (ကၞပ်ပထမ)", withExtension: "pdf")!),
                pitakaData(title: "ပါဠိအၚ်္ဂုတ္တိုရ် ဘာသာမန် (ကၞပ်ဒုတိယ)", subtitle: "ပဉ္စက၊ ဆက္က၊ သတ္တကနိပါတ်", imageName: "TripitakaMon5", fileName: Bundle.main.path(forResource: "ပါဠိအၚ်္ဂုတ္တိုရ် ဘာသာမန် (ကၞပ်ဒုတိယ)", ofType: "pdf")!, url: Bundle.main.url(forResource: "ပါဠိအၚ်္ဂုတ္တိုရ် ဘာသာမန် (ကၞပ်ဒုတိယ)", withExtension: "pdf")!),
                pitakaData(title: "ပါဠိအၚ်္ဂုတ္တိုရ် ဘာသာမန် (ကၞပ်တတိယ)", subtitle: "အဋ္ဌက၊ နဝက၊ ဒသက၊ ဨကာဒသကနိပါတ်", imageName: "TripitakaMon4", fileName: Bundle.main.path(forResource: "ပါဠိအၚ်္ဂုတ္တိုရ် ဘာသာမန် (ကၞပ်တတိယ)", ofType: "pdf")!, url: Bundle.main.url(forResource: "ပါဠိအၚ်္ဂုတ္တိုရ် ဘာသာမန် (ကၞပ်တတိယ)", withExtension: "pdf")!)
    ]),
        Basket(basketName: "မူဆဋ္ဌသံဂါယန သုတ္တန္တပိဋကတ် ခုဒ္ဒကနိကာယ်", bookTitle: [
                pitakaData(title: "ပါဠိခုဒ္ဒကပါဋ္ဌ ဘာသာမန်", subtitle: "ခုဒ္ဒကပါဌ၊ ဓမ္မပဒ၊ ဥဒါန၊ ဣတိဝုတ္တက၊ သုတ္တနိပါတ်", imageName: "TripitakaMon23", fileName: Bundle.main.path(forResource: "ပါဠိခုဒ္ဒကပါဋ္ဌ ဘာသာမန်", ofType: "pdf")!, url: Bundle.main.url(forResource: "ပါဠိခုဒ္ဒကပါဋ္ဌ ဘာသာမန်", withExtension: "pdf")!),
                pitakaData(title: "ပါဠိဝိမာန ကေုာံ ပေတဝတ္ထု ဘာသာမန်", subtitle: "", imageName: "TripitakaMon22", fileName: Bundle.main.path(forResource: "ပါဠိဝိမာန ကေုာံ ပေတဝတ္ထု ဘာသာမန်", ofType: "pdf")!, url: Bundle.main.url(forResource: "ပါဠိဝိမာန ကေုာံ ပေတဝတ္ထု ဘာသာမန်", withExtension: "pdf")!),
                pitakaData(title: "ပါဠိပဋိသမ္ဘီဒါမဂ် ဘာသာမန်", subtitle: "", imageName: "TripitakaMon10", fileName: Bundle.main.path(forResource: "ပါဠိပဋိသမ္ဘီဒါမဂ် ဘာသာမန်", ofType: "pdf")!, url: Bundle.main.url(forResource: "ပါဠိပဋိသမ္ဘီဒါမဂ် ဘာသာမန်", withExtension: "pdf")!),
                pitakaData(title: "ပါဠိထေရာပဒါန် ဘာသာမန်", subtitle: "ကၞပ်(ပ+ဒု)", imageName: "TripitakaMon24", fileName: Bundle.main.path(forResource: "ပါဠိထေရာပဒါန် ဘာသာမန်", ofType: "pdf")!, url: Bundle.main.url(forResource: "ပါဠိထေရာပဒါန် ဘာသာမန်", withExtension: "pdf")!),
                pitakaData(title: "ပါဠိထေရထေရဳဂါထာ ဘာသာမန်", subtitle: "", imageName: "TripitakaMon20", fileName: Bundle.main.path(forResource: "ပါဠိထေရထေရဳဂါထာ ဘာသာမန်", ofType: "pdf")!, url: Bundle.main.url(forResource: "ပါဠိထေရထေရဳဂါထာ ဘာသာမန်", withExtension: "pdf")!),
                pitakaData(title: "ပါဠိမိလိန္ဒပဉှာ ဘာသာမန်", subtitle: "", imageName: "TripitakaMon21", fileName: Bundle.main.path(forResource: "ပါဠိမိလိန္ဒပဉှာ ဘာသာမန်", ofType: "pdf")!, url: Bundle.main.url(forResource: "ပါဠိမိလိန္ဒပဉှာ ဘာသာမန်", withExtension: "pdf")!)
    ])
]


let AbhidhawBook = [
    Basket(basketName: "မူဆဋ္ဌသံဂါယန အဘိဓမ္မပိဋကတ် ခုဒ္ဒကနိကာယ်", bookTitle: [
    pitakaData(title: "ပါဠိဓမ္မသၚ်္ဂဏဳ ဘာသာမန်", subtitle: "", imageName: "TripitakaMon28", fileName: Bundle.main.path(forResource: "ပါဠိဓမ္မသၚ်္ဂဏဳ ဘာသာမန်", ofType: "pdf")!, url: Bundle.main.url(forResource: "ပါဠိဓမ္မသၚ်္ဂဏဳ ဘာသာမန်", withExtension: "pdf")!),
        pitakaData(title: "ပါဠိဝိဘၚ် ဘာသာမန် (ကၞပ် ပ+ဒု)", subtitle: "", imageName: "TripitakaMon27", fileName: Bundle.main.path(forResource: "ပါဠိဝိဘၚ် ဘာသာမန် (ကၞပ် ပ+ဒု)", ofType: "pdf")!, url: Bundle.main.url(forResource: "ပါဠိဝိဘၚ် ဘာသာမန် (ကၞပ် ပ+ဒု)", withExtension: "pdf")!),
        pitakaData(title: "ပါဠိကထာဝတ္ထု ဘာသာမန် (ကၞပ်ပထမ)", subtitle: "", imageName: "TripitakaMon25", fileName: Bundle.main.path(forResource: "ပါဠိကထာဝတ္ထု ဘာသာမန် (ကၞပ်ပထမ)", ofType: "pdf")!, url: Bundle.main.url(forResource: "ပါဠိကထာဝတ္ထု ဘာသာမန် (ကၞပ်ပထမ)", withExtension: "pdf")!),
        pitakaData(title: "ပါဠိကထာဝတ္ထု ဘာသာမန် (ကၞပ်ဒုတိယ)", subtitle: "", imageName: "TripitakaMon26", fileName: Bundle.main.path(forResource: "ပါဠိကထာဝတ္ထု ဘာသာမန် (ကၞပ်ဒုတိယ)", ofType: "pdf")!, url: Bundle.main.url(forResource: "ပါဠိကထာဝတ္ထု ဘာသာမန် (ကၞပ်ဒုတိယ)", withExtension: "pdf")!),
        pitakaData(title: "ပါဠိပုဂ္ဂလပညပ် ဘာသာမန်", subtitle: "", imageName: "TripitakaMon11", fileName: Bundle.main.path(forResource: "ပါဠိပုဂ္ဂလပညပ် ဘာသာမန်", ofType: "pdf")!, url: Bundle.main.url(forResource: "ပါဠိပုဂ္ဂလပညပ် ဘာသာမန်", withExtension: "pdf")!)
    ])
    ]
