//
//  EventInfoPage.swift
//  EventifyProject
//
//  Created by Noura on 14/06/1445 AH.
//

import SwiftUI

struct EventInfoPage: View {
    @State private var Ename: String = ""
    @State private var end: String = ""
    @State private var start: String = ""
    @State private var location: String = ""
    @State private var selection = "Entertainment"
    let `Type` = ["Entertainment", "education", "the culture", "Commercial", "Social"]


    
    var body: some View {
        
                VStack {
                    GeometryReader { geometry in
                        HStack {
                            ZStack{
            Image(systemName: "circle.fill")
                .bold()
            .foregroundColor(Color("Light"))
            .font(.largeTitle)
            .font(.system(size: 20))
            .padding(.horizontal, 40.0)
            .padding(.vertical, -60.0)
            .padding(.top, 40.0)
                                
            Image(systemName: "checkmark")
                .bold()
                .font(.system(size: 20))
                .foregroundColor(.white)
                .padding(.top, -28.0)
                            }
                            Rectangle()
                                .frame(width: 90, height: 6)
                                .foregroundColor(Color("Light"))
                                .padding(.horizontal, -52.0)
                                .padding(.vertical, -43.0)
                                .padding(.top, 40.0)
                            
                            Image(systemName: "circle")
                                .foregroundColor(Color("Light"))
                                .bold()
                                .font(.largeTitle)
                                .font(.system(size: 20))
                                .padding(.horizontal, 27.0)
                                .padding(.vertical, -60.0)
                                .padding(.top, 40.0)
                            
                            Rectangle()
                                .frame(width: 90, height: 6)
                                .frame(maxWidth: .infinity)
                                .foregroundColor(Color("Dark"))
                                .padding(.horizontal, -40.0)
                                .padding(.vertical, -43.0)
                                .padding(.top, 40.0)
                            
                            Image(systemName: "circle")
                                .foregroundColor(Color("Dark"))
                                .bold()
                                .font(.largeTitle)
                                .font(.system(size: 20))
                                .padding(.horizontal, 28.0)
                                .padding(.vertical, -60.0)
                                .padding(.top, 40.0)
                            
                            Image(systemName: "line.1.horizontal")
                                .font(.largeTitle)
                                .font(.system(size: 20))
                                .position(CGPoint(x: 60, y: -301))
                        }.position(x: geometry.size.width * 0.50, y: geometry.size.height * 0.4)

                        
                    }
                    
                    HStack(spacing:120){
                        Text("Create Account")
                            .font(.system(size: 10))
                            .foregroundColor(Color("Light"))
                            .padding(.top, -55.0)
                            .padding(.leading, 20)
                        
                        Text("Event Info")
                            .foregroundColor(Color("Light"))
                            .font(.system(size: 10))
                            .foregroundColor(.gray)
                            .padding(.top, -55.0)
                            .padding(.leading, -70)
                        
                        Text("Services")
                            .font(.system(size: 10))
                            .foregroundColor(.gray)
                            .padding(.top, -55.0)
                            .padding(.leading,-50.0)
                          }
                    VStack(alignment: .leading) {
                        Text("Event's Name")
                            .bold()
                            .font(.system(size: 17))
                            .font(.subheadline)
                            .foregroundColor(.black)
                            .padding(.top, -40.0)
                            
                        
                        TextField("Name", text: $Ename)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.top, -20.0)
                            .padding(.bottom, 50.0)
                        Text("Event Type")
            .bold()
            .font(.system(size: 17))
            .font(.subheadline)
            .foregroundColor(.black)
            .padding(.top, -40.0)
            .padding(.bottom, -20.0)
                      
    Picker("Select a paint color", selection: $selection) {
    ForEach(Type, id: \.self) {
    Text($0)
           
                                    }

                                }
    .pickerStyle(.menu)
    .padding(.top,-18.0)
    .frame(width:360, height: 15)
        .overlay(
        RoundedRectangle(cornerRadius: 5)
            .stroke(Color.gray, lineWidth: 0.2)
            .foregroundColor(.gray)
            .padding(.top,-15.0)
                            )
                            
                        

                        Text("Event Starting date")
                            .bold()
                            .font(.system(size: 17))
                            .multilineTextAlignment(.leading)
                            .font(.subheadline)
                            .foregroundColor(.black)
                            .padding(.top, 15.0)
                        
                        TextField("start", text: $start)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.bottom, 10.0)
                        
                        Text("Event end date")
                            .bold()
                            .font(.system(size: 17))
                            .multilineTextAlignment(.leading)
                            .font(.subheadline)
                            .foregroundColor(.black)
                            .padding(.top, 10.0)
                        
                        TextField("end", text: $end)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.bottom, 10.0)
                            
                        
                        Text("Event location")
                            .bold()
                            .font(.system(size: 17))
                            .multilineTextAlignment(.leading)
                            .font(.subheadline)
                            .foregroundColor(.black)
                        
                        TextField("location", text: $location)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding(.bottom, 150.0)
                        
                        NavigationLink(destination: ServicesDetailsPage()) {
                            Text("Continue")
                                .font(.system(size: 23))
                                .foregroundColor(.white)
                                .frame(width: 330, height: 75, alignment: .center)
                                
                        }
                        .background(Color("Dark"))
                        .cornerRadius(100)
                        .padding(.top, -90.0)
                        .padding(.bottom, -100.0)
                        .padding(.horizontal)
                    }
                }.padding()
            }
        }
    

struct EventInfoPage_Previews: PreviewProvider {
    static var previews: some View {
        EventInfoPage()
    }
}

