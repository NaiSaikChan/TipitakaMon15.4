//
//  infoView.swift
//  TipitakaMonSwiftUI
//
//  Created by Saik Chan on 12/5/20.
//  Copyright © 2020 Saik  Chan. All rights reserved.
//

import SwiftUI

struct infoView: View {
    var body : some View{
        
        NavigationStack{
            ScrollView{
                
                VStack(spacing: 15){
                    Image("TripitakaMon")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .foregroundColor(.blue)
                    
                }
                
                VStack(spacing: 15.0){
                    HStack{
                        Text("တၚ်ရန်တၟံ လိက်ပါဠိပိဋကတ် ကၠာဲစၠောံဘာသာမန်ဝွံ ဂကူမန်ဂွံနၚ်လဝ်လိက်ပိဋကတ်ကၠာအိုတ် ညံၚ်ဟွံဂွံကၠေံအာ၊ ဂွံသှ်ေၜက်အာစဵုကဵုကဝ်တူကီု၊ ညံၚ်ဂွံနွံကၠုၚ်ဂွံဒှ်အာ အထံက်အပၚ်ဘာသာကီု၊ သာသနာမန် ဂွံတန်တဴအာ အဓာန်ဂၠိၚ်သ္ၚောဲမာန်တုဲ ဂကောံသၚ်မန်ဂိုဏ်စုၚ် ကညနိမန် ချပ်ဂၞန်တုဲ ချူတက်တြးတဴရ။ လိက်ပါဠိပိဋကတ် ကၠာဲစၠောံလဝ် ဘာသာမန် ၜိုတ်တုဲကၠုၚ်လဝ်ဂှ် သွက်ကောန်မန်တအ် ဂွံဗှ်လ္ၚတ်အာကီု၊ ဗွဲမဂတာပ်ခေတ်ဂွံ သုၚ်စောဲအာကီုတုဲ ပါ်တြးကဵုဏာရ။ ဂတနူဏအ် လိက်ပါဠိပိဋကတ် ပြကိုဟ်သှေ်မံၚ်တအ်ဂှ်လေဝ် ဆက်ချူ ဆက်တက်တြးမံၚ်စဵုပိဋကတ်အိုတ်ရောၚ်။")
                            .font(.custom("Pyidaungsu", size: 16))
                            .multilineTextAlignment(.center)
                            .padding([.top, .leading, .trailing], 20.0)
                    }
                    Text("ဘာသန္တိသုခ ဍုၚ်ဇြပ်ဗု တိဍာ်ဍုၚ်မန်။")
                        .font(.custom("Pyidaungsu", size: 16))
                        .fontWeight(.bold)
                    Spacer()
                }
                
                Spacer()
                
                VStack(spacing: 15){
                    Text("ဖိုလ်ဂွံရေၚ်တၠုၚ် ပ္တိတ်ဇြဟတ် ဉာဏကေုာံကာယသွက် App ဂွံဒှ်ကၠုၚ်မာန်ဏံဝွံ ကဵုအဲဍိက်ဏံကလိဂွံဉာဏ်မဂြၚ်တီကေတ် မဂ်ဖိုလ်နိဗ္ဗာန် မတိတ်ဗၠးနူသံသာဏံမာန်ညိအဴ။")
                        .font(.custom("Pyidaungsu", size: 16))
                        .padding(.all, 20.0)
                    Text("App Developer: နာဲသိုက်ဆာန် (တံၚ်မောံ)")
                        .font(.custom("Pyidaungsu", size: 16))
                        .fontWeight(.bold)
                }
            }
            .navigationTitle("နိဒါန်ဆက်မိတ်")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}


struct infoView_Previews: PreviewProvider {
    static var previews: some View {
        infoView()
    }
}
