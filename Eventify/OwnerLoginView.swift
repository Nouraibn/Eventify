//
//  OwnerLoginView.swift
//  Eventify
//
//  Created by Rania on 15/06/1445 AH.
//

import SwiftUI

struct OwnerLoginView: View {
    var body: some View {
        @State var email: String = ""
        @State var pass: String = ""
        ScrollView(.vertical, showsIndicators: true){
            VStack(alignment: .leading, spacing: 30){
                Text("Event Organizers Login")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
                VStack{
                    VStack(alignment:.leading){
                        Text("Email:")
                        TextField("ran@example٠com", text: $email)
                            .foregroundColor(.black)
                            .padding(12.0)
                            .border(.dark)
                            .cornerRadius(20)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.dark, lineWidth: 2))
                        
                    }
                    .padding()
                    //.navigationTitle("Event Organizers Login")
                    //.navigationBarHidden(true)
                    
                    .accentColor(.black)
                    VStack(alignment:.leading){
                        HStack {
                            SecureField("Password", text: $pass)
                                .foregroundColor(.black)
                                .padding(12.0)
                                .border(Color.dark)
                                .cornerRadius(20)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 15)
                                        .stroke(Color.dark, lineWidth: 2)
                                )
                        }.accentColor(.black)
                            .padding()
                        
                        Button("Forget your password?"){}
                            .padding(.leading, 180 )
                            .accentColor(.gray)
                        
                        
                        Button{
                        }label: {
                            NavigationLink(destination: OwnerProfile()) {
                                Spacer()
                                Text(" Login ")
                                Spacer()
                            }
                        }
                        //.navigationBarHidden(true)
                        .buttonStyle(.bordered)
                        .controlSize(.large)
                        .background(Color("Dark"))
                        .foregroundColor(.white)
                        .cornerRadius(20)
                        .padding()
                    }
                    VStack{
                        Text("or")
                        
                        Button{
                        }label: {
                            Spacer()
                            Image(systemName: "applelogo")
                            Text(" Login with Apple ID ")
                            Spacer()
                        }
                        .buttonStyle(.bordered)
                        .controlSize(.large)
                        .fontWeight(.bold)
                        .background(Color(.black))
                        .foregroundColor(.white)
                        .cornerRadius(20)
                        .padding()
                    }
                    Divider()
                        .overlay(Color.black)
                    HStack{
                        Text("Don't have an account?")
                            .accentColor(.dark)
                        Spacer()
                        NavigationLink(destination:OrganizerSignupPage() , label:{
                            Text("Signup")
                        })
                        .padding(10)
                        .accentColor(.dark)
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color.dark, lineWidth: 2))
                    }.padding()
                }
            }
            
            .padding()
        }
    }
}
#Preview {
    OwnerLoginView()
}
