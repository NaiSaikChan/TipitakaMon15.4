//
//  vinyanaView.swift
//  TipitakaMon
//
//  Created by Silarcara on 28/7/24.
//

import SwiftUI


struct VinayaBasket: Identifiable {
        var id = UUID()
        var title: String;
        var subtitle: String;
        var imageName: String;
        var fileName: String
}

// VinayaBasket 5 books

let dataVinyana = [
    VinayaBasket(title: "ပါဠိပါရာဇိကဏ် ဘာသာမန်", subtitle: "မူဆဋ္ဌသံဂါယန ဝိနယပိဋကတ် ခုဒ္ဒကနိကာယ်", imageName: "TripitakaMon16", fileName: Bundle.main.path(forResource: "ပါဠိပါရာဇိကဏ် ဘာသာမန်", ofType: "pdf")!),
        VinayaBasket(title: "ပါဠိပါဲစိုတ် ဘာသာမန်", subtitle: "မူဆဋ္ဌသံဂါယန ဝိနယပိဋကတ် ခုဒ္ဒကနိကာယ်", imageName: "TripitakaMon18", fileName: Bundle.main.path(forResource: "ပါဠိပါဲစိုတ် ဘာသာမန်", ofType: "pdf")!),
        VinayaBasket(title: "ပါဠိမဟာဝဂ် ဘာသာမန်", subtitle: "မူဆဋ္ဌသံဂါယန ဝိနယပိဋကတ် ခုဒ္ဒကနိကာယ်", imageName: "TripitakaMon15", fileName: Bundle.main.path(forResource: "ပါဠိမဟာဝဂ် ဘာသာမန်", ofType: "pdf")!),
        VinayaBasket(title: "ပါဠိစူဠဝဝ် ဘာသာမန်", subtitle: "မူဆဋ္ဌသံဂါယန ဝိနယပိဋကတ် ခုဒ္ဒကနိကာယ်", imageName: "TripitakaMon19", fileName: Bundle.main.path(forResource: "ပါဠိစူဠဝဝ် ဘာသာမန်", ofType: "pdf")!),
        VinayaBasket(title: "ပါဠိပရိဝရ် ဘာသာမန်", subtitle: "မူဆဋ္ဌသံဂါယန ဝိနယပိဋကတ် ခုဒ္ဒကနိကာယ်", imageName: "TripitakaMon17", fileName: Bundle.main.path(forResource: "ပါဠိပရိဝရ် ဘာသာမန်", ofType: "pdf")!)
]

struct vinyanaView : View {
    
    var Vinaya : [VinayaBasket] = dataVinyana
    
    var body: some View{
        
        NavigationView{
            
            HStack{
                List(dataVinyana){
                    item in
                    Label(
                        title: {
                            Text(item.title)
                                .padding(10)
                                .bold()
                                
                        },
                        icon: { Image(item.imageName)
                                .resizable()
                                .frame(width: 60, height: 80)
                                
                        }
                    )
                    .font(.custom("Pyidaungsu", size: 18))
                    .frame(height: 100)
                    
                }
            }
            
            .navigationTitle("ဝိိနိယ ပိဋကတ်")
        }
    }
}

#Preview {
    vinyanaView()
}

