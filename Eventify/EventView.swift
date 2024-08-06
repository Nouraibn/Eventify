//
//  Event page.swift
//  EvetnfyApp
//
//  Created by Deemah on 13/06/1445 AH.
//

import SwiftUI
import MapKit
struct map: View{
    let Expo1 = CLLocationCoordinate2D(latitude: 24.89016057919483,  longitude:46.7057733836305)
    
  
    let Expo2 = CLLocationCoordinate2D(latitude:  24.890330739247407,     longitude:46.70580122059514)
    

    var body: some View{
        Map(){
            Marker("Expo 2030" , coordinate: Expo1)
           
            Marker("الرياض  اكسبو ٢٠٣٠" , coordinate: Expo2)

            
            
        }
    }
}


struct EventView: View {
    @State private var isLoggedIn = false
    var body: some View {
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
                    
                    
                    Image("Expo")
                        .resizable()
                        .cornerRadius(9.0)
                        .clipShape(Rectangle())
                        .frame(width: 370, height:220 )
                    //.padding(.bottom , 300)
                    Spacer()
                    Divider()
                    
                    VStack (alignment : .leading ){
                        
                        Text("Event Description")
                            .font(.system(size: 23))
                            .fontWeight(.semibold)
                        Spacer()
                        
                        
                        // .padding(.trailing, 190.0)
                        
                        
                        Text("Expo 2030 is an upcoming World Expo organised and sanctioned by the Bureau International des Expositions, which will be held in Riyadh." )
                            .foregroundColor(.gray)
                        Spacer()
                        Text("It will take place for six months during  late 2030 and early 2031, opening on 1 October 2030 and closing on 31 March 2031. ")
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
                        // .padding(.trailing, 252.0)
                        
                        //  Image("Expo")
                        //    .resizable()
                        //   .cornerRadius(9.0)
                        ///   .clipShape(Rectangle())
                        //.frame(width: 355, //height:120 )
                        
                        map()
                            .frame(width: 350, height: 300 )
                            .cornerRadius(9)
                            .padding(.leading, 5.0 )
                            .padding(.bottom, 30.0)
                        
                        //Spacer()
                        //  Spacer()
                        // Spacer()
                        
                        Text("Event Parking")
                            .font(.system(size: 23))
                            .fontWeight(.semibold)
                        // .padding(.top, 100.0)
                        
                        // .padding(.trailing, 210.0)
                        
                        
                        HStack{
                            NavigationLink(destination: ParkingView()){
                                Text("Parking Availability")
                                    .font(.system(size: 20))
                                    .foregroundColor(.white)
                                    .font(.system(size: 21.5))
                                    .padding(.trailing, 127.0)
                                
                                
                            }//.navigationBarBackButtonHidden(true)
                            Button(action: {
                                
                            }, label: {
                                Image(systemName: "chevron.forward")
                                    .foregroundColor(.white)
                                    .padding()
                                    .bold()
                            })
                            
                        }
                        
                        
                        .frame(width:360, height:65)
                        .background(Color("Light"))
                        .cornerRadius(9)
                        .padding(.bottom, 40.0)
                        //.padding()
                        
                    }
                    .padding(.leading)
                    //  .padding(.leading)
                    
                    
                }//VStack
                //  .padding()
                
                ZStack{
                    
                    Button(action: { }, label: {
                        NavigationLink(destination: CalendarView()){
                            Text("Buy Tickets")
                                .foregroundColor(.white)
                                .font(.system(size: 21.5))
                                .frame(width:250, height: 50)
                                .background(Color("Dark"))
                                .cornerRadius(150)
                                .bold()
                                .padding()
                        }
                    })
                    
                    
                }
            }
        
    }
}
    #Preview {
       
        EventView()
       
        
            }

