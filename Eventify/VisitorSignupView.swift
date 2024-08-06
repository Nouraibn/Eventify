//
//  VisitorSignupView.swift
//  Eventify
//
//  Created by Rania on 17/06/1445 AH.
//

import SwiftUI

struct VisitorSignupView: View {
    var body: some View {
        @State var email: String = ""
        @State var pass: String = ""
        @State var name: String = ""
        
        ScrollView(.vertical, showsIndicators: true){
            VStack(alignment: .leading, spacing: 30){
                Text("Sign up")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
                    .padding()
                
                VStack{
                    VStack(alignment:.leading){
                        Text("Name:")
                        TextField("Full name", text: $name)
                            .foregroundColor(.black)
                            .padding(12.0)
                            .border(.dark)
                            .cornerRadius(20)
                            .overlay(
                                RoundedRectangle(cornerRadius: 15)
                                    .stroke(Color.dark, lineWidth: 2))
                    }
                    .padding()
                    
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
                        .navigationTitle("Sign Up")
                        .navigationBarHidden(true)
                        
                        //.accentColor(.black)
                        VStack(alignment:.leading){
                            Text("Password:")
                            HStack{
                                TextField("", text: $pass)
                                    .foregroundColor(.black)
                                    .padding(12.0)
                                    .border(.dark)
                                    .cornerRadius(20)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 15)
                                            .stroke(Color.dark, lineWidth: 2))
                            }
                        }
                        .accentColor(.black).padding()
                        
                        // Spacer()
                        Button{
                        }label: {
                            NavigationLink(destination: VisitorView()){
                                Spacer()
                                Text(" Sign up ")
                                Spacer()
                            }                        .buttonStyle(.bordered)
                                .controlSize(.large)
                                .background(Color("Dark"))
                                .foregroundColor(.white)
                                .cornerRadius(20)
                                .padding()
                        }
                        Text("or")
                        
                        Button{
                        }label: {
                            Spacer()
                            Image(systemName: "applelogo")
                            Text(" Sign up with Apple ID ")
                            Spacer()
                        }
                        .buttonStyle(.bordered)
                        .controlSize(.large)
                        .fontWeight(.bold)
                        .background(Color(.black))
                        .foregroundColor(.white)
                        .cornerRadius(20)
                        .padding()
                        
                        Divider()
                            .overlay(Color.black)
                            .padding()
                        
                        HStack {
                            // Don’t have an account ?
                            NavigationLink(destination:VisitorLoginView()){
                                Button("Already have an account?"){
                                }
                            }
                            .padding()
                            .accentColor(.dark)
                            
                            Spacer()
                            
                            
                            NavigationLink(destination:VisitorLoginView() ,
                                           label:{
                                Text(" login ")
                            })
                            .controlSize(.large)
                            .foregroundColor(.dark)
                            .cornerRadius(20)
                            .padding()
                            .overlay(RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.dark, lineWidth: 2))
                            
                            Spacer()
                        }.padding()
                    }
                }
            }
        }
    }
}
            
#Preview {
   VisitorSignupView()
            }
