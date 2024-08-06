//
//  edit.swift
//  EvetnfyApp
//
//  Created by Deemah on 18/06/1445 AH.
//


import SwiftUI
import MapKit

struct EditEventView: View {
    @State  var D: String = ""
    @State  var P: String = ""
    @State  var T: String = ""

    var body: some View {
        NavigationView {
            ScrollView{
                VStack(alignment:.center){
                    //  Image(systemName: "chevron.backward")
                    HStack{
                       
                        
                        Spacer()
                        VStack(spacing:1){
                            Text("Expo 2030")
                                .font(.system(size: 20))
                                .fontWeight(.semibold)
                        }
                        Spacer()
                        Button(action: {}, label: {
                            
                            VStack(alignment: .leading, spacing: 10) {

              

                                  }
                           
                ShareLink(item: URL(string: "https://www.Eventify.com")!) {
                                       Label("", systemImage: "square.and.arrow.up")
                                   }
                           
                                .foregroundColor(Color("Dark"))
                                .padding(.trailing, 15.0)
                                .font(.system(size: 20))
                        })
                        // .padding()
                        
                    } //HStack
                    // .padding(.bottom, 100.0)
                    
                    ZStack(alignment: .bottom){
                        Image("Expo")
                            .resizable()
                            .cornerRadius(9.0)
                            .clipShape(Rectangle())
                            .frame(width: 370, height:220 )
                        //.padding(.bottom , 300)
                        Image(systemName: "pencil.circle.fill")
                            .foregroundColor(.g)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .offset(x: 150, y: -20)
                    }
                    Spacer()
                    Divider()
                    
                    VStack (alignment : .leading ){
                        
                        Text("Event Description")
                            .font(.system(size: 23))
                            .fontWeight(.semibold)
                        
                        TextField(
                               "Description",
                               text: $D
                               
                           )
                        .padding()
                         .frame(width: 370, height:100 )
                         .background(.g)
                         .cornerRadius(9)
                      
                        
                        Spacer()
                            .foregroundColor(.gray)
                        Spacer()
                    
                            .foregroundColor(.gray)
                        Divider()
                            .padding(.bottom, 24.0)
                            .padding(.trailing, 10.0)
                        
                        //.multilineTextAlignment(.leading)
                        // .padding([.bottom, .trailing], 15.0)
                        //.fontWeight(.semibold)
                        
                        
                        
                        Text("Event Map")
                            .font(.system(size: 23))
                            .fontWeight(.semibold)
                       
                        map()
                            .frame(width: 370, height:100 )
                            .cornerRadius(9)
                            .padding(.trailing, 15.0)
                            .padding(.bottom, 30.0)
                        
                       
                        Text("Event Parking")
                            .font(.system(size: 23))
                            .fontWeight(.semibold)
                        HStack{
                            Text("Capacity:")
                            TextField(
                                " 100",
                                text: $P
                            )
                        }
                        .padding()
                         .frame(width: 370, height:100 )
                         .background(.g)
                         .cornerRadius(9)
                         .padding(.bottom, 30.0)
                        
                            Button{}label: {
                                Image(systemName: "plus.circle")
                                    .foregroundColor(.black)
                                    .offset(x: 170)
                                    .padding(.bottom, 20)
                            }
                        
                        
                        // .padding(.top, 100.0)
                        
                        // .padding(.trailing, 210.0)
                        
                        Text("Event Ticket")
                            .font(.system(size: 23))
                            .fontWeight(.semibold)
                        HStack{
                            Text("Availabilty:")
                            TextField(
                                "500",
                                text: $T
                            )
                        }
                    
                        .padding()
                         .frame(width: 370, height:100 )
                         .background(.g)
                         .cornerRadius(9)
                         .padding(.bottom, 30.0)
                        Button{}label: {
                            Image(systemName: "plus.circle")
                                .foregroundColor(.black)
                                .offset(x: 170)
                                .padding(.bottom, 20)
                        }
                        
                        
                       // .frame(width:36, height:65)
                        //.background(Color("Light"))
                       // .cornerRadius(9)
                      //  .padding(.bottom, 40.0)
                        //.padding()
                        
                    }
                    
                    
                    
                    .padding(.leading)
                    //  .padding(.leading)
                    
                    
                }//VStack
                //  .padding()
                
              
            }
        }
    }
}
    #Preview {
       
        EditEventView()
       
        
            }

