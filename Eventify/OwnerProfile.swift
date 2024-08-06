//
//  ProfileView.swift
//  Eventify
//
//  Created by Rania on 12/06/1445 AH.
//

import SwiftUI

struct OwnerProfile : View {
    var body: some View {
        
            ScrollView(.vertical, showsIndicators: true){
                VStack (alignment: .center, spacing: 10){
                    HStack{
                        Image("Owner")
                            .resizable()
                            .frame(width: 80 , height: 80)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        
                        VStack (alignment: .leading){
                            Text("Noura")
                                .fontWeight(.semibold)
                        }
                        Spacer()
                        Button{
                            
                        }label:{
                            Image(systemName: "plus.circle")
                                .font(.largeTitle)
                        }
                    }
                    .padding()
                    HStack{
                        Text("My Tickets")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            .padding(.top, 13.0)
                        Spacer()
                    }
                    ZStack(alignment: .bottom){
                        NavigationLink(destination: EditEventView()){
                            Image("Expo")
                                .resizable()
                                .frame(width:350, height: 180)
                                .cornerRadius(20)
                        }
                        HStack{
                            Text("Expo 2030")
                                .foregroundColor(.white)
                                .fontWeight(.semibold)
                            Spacer()
                            Text("27 Dec")
                                .foregroundColor(.white)
                                .fontWeight(.light)
                        }
                        .padding()
                        .frame(width: 350)
                        .background(.ultraThinMaterial)
                        .cornerRadius(10)
                    }
                    
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    
                    VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
                        Button{
                        }label: {
                            Spacer()
                            NavigationLink(destination: OwnerLoginView()){
                                Label("Logout", systemImage: "rectangle.portrait.and.arrow.right")
                                Spacer()
                            }
                            .padding(20)
                            .controlSize(.large)
                            .accentColor(.dark)
                            .background(
                                RoundedRectangle(
                                    cornerRadius: 30
                                )
                                .stroke(.dark, lineWidth: 2)
                            )
                        }}
                    //.navigationBarHidden(true)
                }
                .padding()
            }
        
    }
}
    

#Preview {
    OwnerProfile()
}
