//
//  loginView.swift
//  Eventify
//
//  Created by Rania on 14/06/1445 AH.
//

import SwiftUI

struct loginView: View {
    var body: some View {
        @State var email: String = ""
        @State var pass: String = ""
        
            ScrollView(.vertical, showsIndicators: true){
                VStack(alignment: .leading, spacing: 15){
                    Text("Login")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(.bold)
                        .padding()
                        .padding(.bottom, 2)
                        .padding(.top, 80)
                    
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
                        
                        VStack(alignment:.leading){
                            Text("Password:")
                                TextField("", text: $pass)
                                    .foregroundColor(.black)
                                    .padding(12.0)
                                    .border(.dark)
                                    .cornerRadius(20)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 15)
                                            .stroke(Color.dark, lineWidth: 2))
                            
                        }.accentColor(.black)
                        .padding()
                        
                        Button("Forget your password?"){}
                            .padding(.leading, 180 )
                            .accentColor(.gray)
                        
                    Button{}
                    label: {
                        NavigationLink(destination: VisitorView()){
                            Spacer()
                            Text(" Login ")
                            Spacer()
                        }
                    }
                    .navigationTitle("Back to visitor login")
                    .navigationBarHidden(true)
                    .buttonStyle(.bordered)
                    .controlSize(.large)
                    .background(Color("Dark"))
                    .foregroundColor(.white)
                    .cornerRadius(20)
                    .padding()
                        
                        Text("or")
                        Button{
                        }label: {
                            Spacer()
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
                        .padding()
                    
                    HStack{
                        Button("Don't have an account?"){}
                            .accentColor(.dark)
                        Spacer()
                        Button("Sign up"){}
                            .padding(10)
                            .accentColor(.dark)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.dark, lineWidth: 2))
                    }.padding()
                    
                    ZStack(alignment: .leading){
                        Rectangle()
                            .foregroundColor(.light)
                        Button{
                        }label: {
                            Spacer()
                            ZStack(alignment: .leading){
                                Rectangle()
                                    .background(Color.light.edgesIgnoringSafeArea(.all))
                                    .foregroundColor(.light)
                                NavigationLink(destination: OwnerLoginView()){
                                    Text(" Are you event owner? ")
                                        .foregroundColor(.dark)
                                        .frame(height: 200)
                                }
                            }
                            Image(systemName: "chevron.right")
                                .foregroundColor(.dark)
                                .padding(.trailing, 15.0)
                            /*
                             .padding(.leading)
                             .accentColor(.white)
                             .background(.light)
                             .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                             .font(.title2)
                             */
                            Spacer()
                            
                        }
                        Spacer()
                        
                    }
                }
            }
            .ignoresSafeArea()
    }
}

#Preview {
    loginView()
}
