//
//  appBarView.swift
//  TipitakaMon
//
//  Created by SaikChan on 31/7/24.
//

import SwiftUI

/// MainHomeView
struct appBarView: View {
    var body: some View{
        Home()
    }
}

struct appBarView_Previews: PreviewProvider {
    static var previews: some View{
        appBarView()
    }
}

struct Home : View {
    @State var index = 0
    @State var show = true
    
    var body: some View{
        VStack(spacing: 3){
            appBar(index: self.$index,show: self.$show)
            
            ZStack{
                
                vinyanaView().opacity(self.index == 0 ? 1 : 0)
                
                SuttaViewL().opacity(self.index == 1 ? 1 : 0)
                
                Abhidhamma().opacity(self.index == 2 ? 1 : 0)
                
                infoView().opacity(self.index == 3 ? 1: 0)
            }
        }.padding(.bottom)
    }
}

struct appBar : View {
    @Binding var index : Int
    @Binding var show : Bool
    var body: some View{
        VStack(){
            
            HStack{
                
                Button(action: {
                    self.index = 0
                }) {
                    VStack{
                        
                        Image(systemName: "book.fill")
                            .resizable()
                            .frame(width: 15, height: 15)
                            .foregroundColor(.white)
                        
                        Text("ဝိနယ်")
                            .foregroundColor(.white)
                            .fontWeight(self.index == 0 ? .bold : .none)
                        
                        Capsule().fill(self.index == 0 ? Color.white : Color.clear)
                            .frame(height: 4)
                    }
                }
                
                Button(action: {
                    
                    self.index = 1
                    
                }) {
                    VStack{
                        Image(systemName: "book.fill")
                            .resizable()
                            .frame(width: 15, height: 15)
                            .foregroundColor(.white)
                        
                        Text("သုတ်")
                            .foregroundColor(.white)
                            .fontWeight(self.index == 1 ? .bold : .none)
                        
                        Capsule().fill(self.index == 1 ? Color.white : Color.clear)
                            .frame(height: 4)
                    }
                }
                
                Button(action: {
                    self.index = 2
                }) {
                    
                    VStack{
                        
                        Image(systemName: "book.fill")
                            .resizable()
                            .frame(width: 15, height: 15)
                            .foregroundColor(.white)
                        
                        Text("အဘိဓရ်")
                            .foregroundColor(.white)
                            .fontWeight(self.index == 2 ? .bold : .none)
                        
                        Capsule().fill(self.index == 2 ? Color.white : Color.clear)
                            .frame(height: 4)
                    }
                }
            }
        }
    }
}


