//
//  ContentView.swift
//  etchasketch
//
//  Created by Burcu Kamilçelebi on 28.02.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack{
                Image("background2")
                    .resizable()
                    .scaledToFill()
                
                redBox()
            }
        }
    }
}
                
struct redBox: View {
    @State private var drawColor = Color(hue: 1.0, saturation: 0.994, brightness: 1.0)
    @State var kareBüyüklüğü: Double = 50
    @State var Silgi: Double = 50
    
    
    var body: some View {
        //red box
        HStack() {
            VStack() {
                Text("Colour")
                    .font(.system(size: 14, weight: .semibold))
                    .offset(x:-150, y:-135)
                
                //it will be color button
                VStack{
                    //colors
                    ColorPicker("Chage rectangle color", selection: $drawColor)
                }
                   // .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color(hue: 1.0, saturation: 0.994, brightness: 1.0))
                    .frame(width: 40, height: 28)
                    .cornerRadius(3)
                    .offset(x: -150, y: -140)
  
                
                Image("etchASketch")
                    .resizable()
                    .frame(width: 90, height: 60)
                    .offset(x: 0, y: -200)
                
                
                //büyüklüğü ayarlayacak
                Text("16 x 16")
                    .font(.system(size: 16, weight: .semibold))
                    .offset(x: 129, y: -265)
                
                //kare boyutu değiştirme
                VStack{
                    Slider(value: $kareBüyüklüğü, in: 1...4)
                }.frame(width: 90, height: 0)
                    .offset(x: 130, y: -256)
                
                //whitebox
                Spacer()
                    .frame(width: 350, height: 370)
                    .background(Color.white)
                    .cornerRadius(10)
                    .padding(.vertical, -200)
                    .offset(x: 0, y: -40)
                    
                HStack{
                    Button("Draw") {
                            //code
                    }
                        .frame(width: 80, height: 50)       .background(Color(red: 0.851, green: 0.851, blue: 0.855))
                       // .border(Color.black, width: 1)
                        .clipShape(Circle())
                        .offset(x: 25, y: 140)
                        .controlSize(.large)
                        .foregroundColor(.black)
                        .shadow(radius: 5)
                        .dynamicTypeSize(/*@START_MENU_TOKEN@*/.small/*@END_MENU_TOKEN@*/)
                        
                    
                    Image("KC_DEV_trans")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .offset(x: 99, y: 110)
                    
                    //silgi slider
                    HStack{
                        Slider(value: $Silgi, in: 1...4)
                    }.frame(width: 180, height: 0)
                        .offset(x: -27, y: 145)
                    
//                    Button("Eraser") {
//                            //code
//                    }
//
//                        .frame(width: 80, height: 50)
//                        .background(Color(red: 0.851, green: 0.851, blue: 0.855))
//                        .clipShape(Circle())
//                        .offset(x: -13, y: 140)
//                        .controlSize(.large)
//                        .foregroundColor(.black)
//                        .shadow(radius: 5)
//                        .dynamicTypeSize(/*@START_MENU_TOKEN@*/.small/*@END_MENU_TOKEN@*/)
//
                      //  .padding(.top, -10)
                       // .padding(.bottom, -0)
                    
                    
                    Button("Clear") {
                            //code
                    }
                        .frame(width: 80, height: 50)
                        .background(Color(red: 0.851, green: 0.851, blue: 0.855))
                        .clipShape(Circle())
                        .offset(x: -25, y: 140)
                        .controlSize(.large)
                        .foregroundColor(.black)
                        .shadow(radius: 5)
                        .dynamicTypeSize(/*@START_MENU_TOKEN@*/.small/*@END_MENU_TOKEN@*/)
                   
                }
            }
            
        }
        .frame(width: 370, height: 530)
        .background(Color(hue: 1.0, saturation: 0.994, brightness: 1.0))
        .shadow(radius: 10)
        .cornerRadius(10.0)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
