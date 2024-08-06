//
//  ProfileView.swift
//  Eventify
//
//  Created by Rania on 12/06/1445 AH.
//

import SwiftUI

struct ProfileView : View {
    @State private var showsheet: Bool = false
    
        var body: some View {
            NavigationView{
                VStack(alignment: .leading){
                    NavigationLink(destination:VisitorLoginView() , label:{
                        Spacer()
                        Text("Login / Signup")
                        Spacer()
                    })
                        .navigationBarHidden(true)
                        .padding(20)
                        .controlSize(.large)
                        .accentColor(.white)
                        .background(.dark)
                        .cornerRadius(150)
                        .frame(width:350, height: 50)
                     
                }.padding()
            }
        }
    }

#Preview {
    ProfileView()
}




/*
    .sheet(isPresented: $showsheet){
 // loginView()
            .presentationDetents([.height(700)])
            .presentationDragIndicator(.visible)
            .ignoresSafeArea()
    }
    
    .onAppear{
        showsheet = false
    }
     
 */
