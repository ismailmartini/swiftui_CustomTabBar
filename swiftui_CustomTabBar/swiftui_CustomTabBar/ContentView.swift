//
//  ContentView.swift
//  swiftui_CustomTabBar
//
//  Created by İsmail MARDİN on 28.03.2020.
//  Copyright © 2020 t. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var index = 0
    var body: some View {
        VStack(spacing: 0){
            ZStack{
                if self.index == 0{
                    Color.blue
                }else if self.index == 1{
                    Color.orange
                }else if self.index == 2{
                    Color.green
                }
                else if self.index == 3 {
                    Color.red
                }
            }
            CustomTabView(index:self.$index)
            
            
            
        }
        .edgesIgnoringSafeArea(.top)
    }
}


struct CustomTabView: View {
    @Binding var index : Int
    var body: some View {
        HStack{
            
            Button(action:{
                self.index = 0
            }){
                
                VStack{
                    
                    if self.index != 0 {
                        
                        Image("refresh").renderingMode(.original)
                            .resizable()
                            .frame(width:32,height:32)
                        // .foregroundColor(Color.black.opacity((0.5)))
                    }else{
                        Image("refresh").renderingMode(.original)
                            .resizable()
                            .frame(width:64,height:64)
                            .padding()
                            // .foregroundColor(Color.red)
                            .clipShape(Circle())
                            .shadow(radius: 10)
                            
                            .offset(y: -32)
                            .padding(.bottom, -52)
                        Text("Refresh").foregroundColor(Color.black.opacity(0.7)).padding(.bottom,10)
                        
                    }
                    
                    
                    
                }
                
                
                
            }
            Spacer()
            
            Button(action:{
                self.index = 1
            }){
                
                VStack{
                    
                    if self.index != 1 {
                        
                        Image("close").renderingMode(.original)
                            .resizable()
                            .frame(width:32,height:32)
                        // .foregroundColor(Color.black.opacity((0.5)))
                    }else{
                        Image("close").renderingMode(.original)
                            .resizable()
                            .frame(width:64,height:64)
                            .padding()
                            // .foregroundColor(Color.red)
                            .clipShape(Circle())
                             .shadow(radius: 10)
                             .offset(y: -32)
                                                       .padding(.bottom, -52)
                                                   Text("Close").foregroundColor(Color.black.opacity(0.7)).padding(.bottom,10)
                        
                    }
                    
                    
                    
                }
                
                
                
            }
            Spacer()
            
            Button(action:{
                self.index = 2
            }){
                
                VStack{
                    
                    if self.index != 2 {
                        
                        Image("like").renderingMode(.original)
                            .resizable()
                            .frame(width:32,height:32)
                        // .foregroundColor(Color.black.opacity((0.5)))
                    }else{
                        Image("like").renderingMode(.original)
                            .resizable()
                            .frame(width:64,height:64)
                            .padding()
                            // .foregroundColor(Color.red)
                            .clipShape(Circle())
                             .shadow(radius: 10)
                             .offset(y: -32)
                                                       .padding(.bottom, -52)
                                                   Text("like").foregroundColor(Color.black.opacity(0.7)).padding(.bottom,10)
                        
                    }
                    
                    
                    
                }
                
                
                
            }
            Spacer()
            
            
            
            Button(action:{
                self.index = 3
            }){
                
                VStack{
                    
                    if self.index != 3 {
                        
                        Image("superLike").renderingMode(.original)
                            .resizable()
                            .frame(width:32,height:32)
                        // .foregroundColor(Color.black.opacity((0.5)))
                    }else{
                        Image("superLike").renderingMode(.original)
                            .resizable()
                            .frame(width:64,height:64)
                            .padding()
                            // .foregroundColor(Color.red)
                            .clipShape(Circle())
                             .shadow(radius: 10)
                             .offset(y: -32)
                                                       .padding(.bottom, -52)
                                                   Text("super like").foregroundColor(Color.black.opacity(0.7)).padding(.bottom,10)
                        
                    }
                    
                    
                    
                }
                
                
                
            }
            
            
            
            
            
            
            
        }.padding(.vertical,-10)
            .padding(.horizontal,25)
            .background(Color.white)
            .animation(.spring())
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
