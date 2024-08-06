//
//  Tickt page.swift
//  EvetnfyApp
//
//  Created by Deemah on 14/06/1445 AH.
//

import SwiftUI

struct TicketView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
          //  Image(systemName: "chevron.backward")
            HStack{
                Spacer()
                VStack(spacing:4){
                    Text("Ticket")
                        .font(.system(size: 20))
                        .fontWeight(.semibold)
                       
                }
               
                Spacer()

            }
            .padding()
            
            NavigationView{
                Form{
                    // Image(systemName: "chevron.backward")
                }
                //.navigationTitle("Event Name")
                //.navigationBarTitleDisplayMode(.inline)
              
                }
                
            ZStack {
                Rectangle()
                .fill(Color("Light"))
                .frame(width: 340, height: 430)
                .cornerRadius(10)
                    .padding(.top, 140.0)
                    Text("Expo 2030")
                        .font(.system(size: 20))
                        .foregroundColor(.black)
                        .position(x:208, y:170)
                        .bold()
                
              
                 
                    Text("22 Dec 2023")
                        .font(.system(size: 18))
                        .position(x:310, y:550)
                        .foregroundColor(.black)
                        //.fontWeight(.semibold)
                       
                    ZStack {
                        //Rectangle()
                        Rectangle()
                           
                            .fill(Color.white)
                            .frame(width: 230, height: 230)
                            .cornerRadius(10)
                            .padding(.top, 85.0)
                      Image("barcode")
                        .resizable()
                      .frame(width: 220, height: 220)
                      .padding(.top, 86.0)
                      .padding(.leading, 6.0)
                           
                        
                        Rectangle()
                            .fill(.white)
                            .frame(width: 340, height:1)
                            .position(x:208, y:510)
                       // Divider()
                    }
                
                
                ZStack{
                    Circle()
                        .fill(Color.white)
                        .frame(width: 70)
                        .padding(.trailing, 350.0)
                        .padding(.bottom, 40.0)
                    
                    Circle()
                        .fill(Color.white)
                        .frame(width: 70)
                        .padding(.leading, 350.0)
                        .padding(.bottom, 40.0)
                }
                }
                .position(x:200, y:-150)
               
            //Divider()
            //.frame(width: 400,height: 50)
            
                Button(action: { }, label: {
                    NavigationLink(destination: VisitorView()){
                        Text("Go to my Tickets")
                            .foregroundColor(.white)
                            .font(.system(size: 21.5))
                            .frame(width:250, height: 50)
                            .background(Color("Dark"))
                            .cornerRadius(150)
                            .bold()
                            .padding(.bottom, 60.0)
                        //   .position(x:200, y:150)
                    }
                })
            }
        }
    }
    
#Preview {
    TicketView()
}
