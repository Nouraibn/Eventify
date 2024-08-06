//
//  ServicesDetailsPage.swift
//  EventifyProject
//
//  Created by Noura on 14/06/1445 AH.

import SwiftUI

struct OptionModel: Identifiable {
    let id: Int
    let label: String
    @State var additionalText: String = ""
}

struct ServicesDetailsPage: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    @State private var selectedOptions: [OptionModel] = []

    
    var body: some View {
        ScrollView{
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
                        
                        ZStack{
                            Image(systemName: "circle.fill")
                                .bold()
                                .foregroundColor(Color("Light"))
                                .font(.largeTitle)
                                .font(.system(size: 20))
                                .padding(.horizontal, 27.0)
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
                            .frame(maxWidth: .infinity)
                            .foregroundColor(Color("Light"))
                            .padding(.horizontal, -40.0)
                            .padding(.vertical, -43.0)
                            .padding(.top, 40.0)
                        
                        Image(systemName: "circle")
                            .foregroundColor(Color("Light"))
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
                    
                    
                }.padding(.bottom,-10)
                    .padding(.top,60)
                
                HStack(spacing:120){
                    Text("Create Account")
                        .font(.system(size: 10))
                        .foregroundColor(Color("Light"))
                        .padding(.top, -95.0)
                        .padding(.horizontal,4.0)
                    
                    Text("Event Info")
                        .foregroundColor(Color("Light"))
                        .font(.system(size: 10))
                        .foregroundColor(.gray)
                        .padding(.horizontal,-60.0)
                    
                    
                        .padding(.top, -95.0)
                    Text("Services")
                        .foregroundColor(Color("Light"))
                        .font(.system(size: 10))
                        .foregroundColor(.gray)
                        .padding(.top,-95.0)
                        .padding(.horizontal,-56.0)
                    
                }.padding(.bottom,-10)
                    .padding(.top,95)
                

    Text("Choose available services:")
                .bold()
                .font(.system(size: 20))
                .padding(.trailing,100)
                .padding(.bottom,10)
                    .padding(.top,-5)
                VStack(alignment:.leading){
Group{ let options: [OptionModel] = [
    OptionModel(id: 0, label: "Parking"),
    OptionModel(id: 1, label: "Ticket"),
    OptionModel(id: 2, label: "Map") ]
    
                        ForEach(options) { option in RadioButton(
                            option: option,
                            isSelected: selectedOptions.contains { $0.id == option.id },
                            onSelect: {
                                if let index = selectedOptions.firstIndex(where: { $0.id == option.id }) {
                                    selectedOptions.remove(at: index)
                                }
                                else {
                                    selectedOptions.append(option)
                                }
                            }
                        )}.padding(.bottom,10.0)
                    }
                    .bold()
                    .padding(.leading,10)
                    .padding(.bottom,10.0)
                    .padding(.top,30)
                    
                    NavigationLink(destination: EventAddedPage()){
                        Spacer()
                        Text(" Continue ")
                        Spacer()
                            
                    }
                    .buttonStyle(.bordered)
                    .controlSize(.large)
                    .background(Color("Dark"))
                    .foregroundColor(.white)
                    .cornerRadius(20)
                    .padding()
                    
                    /*
                    NavigationLink(destination: EventAddedPage()) {
                        Text("Continue")
                            .font(.system(size: 23))
                            .foregroundColor(.white)
                            .frame(width: 330, height: 75, alignment: .center)
                        
                    }
                    .background(Color("Dark"))
                    .cornerRadius(100)
                    .padding(.top, 200.0)
                    .padding(.bottom, -100.0)
                    .padding(.horizontal)
                    */
                }
                
            }
            .padding()
        }}
    struct RadioButton: View {
                let option: OptionModel
                let isSelected: Bool
                let onSelect: () -> Void
        @State private var userInput: String = ""

                var body: some View {
                    VStack(alignment: .leading) {
                        HStack {
                            Image(systemName: isSelected ? "largecircle.fill.circle" : "circle")
                                .resizable()
                                .frame(width: 20, height: 20)
                            Text(option.label)
                        }
                        .onTapGesture {
                            onSelect()
                        }

                        if option.id  == 0 && isSelected {
                            ZStack{ Text(".")
            .frame(width:360, height: 150)
        .overlay(
                RoundedRectangle(cornerRadius: 5)
            .foregroundColor(.g)
            .padding(.top,-15.0)
                                    )
        .padding(.top, 20.0)
                                Text(".")
                .frame(width:340, height: 80)
            .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .foregroundColor(.light)
                .padding(.top,-15.0)
                                        )
            VStack{
            Text("Parcking Area")
                    .padding(.top, -13.0)
                    .padding(.trailing, 210.0)
            .bold()
                HStack {
                    Text("Capacity:")
                        .padding(.leading, 20.0)
                    .font(.headline)
                    TextField("", text: $userInput)
                        .textFieldStyle(PlainTextFieldStyle())
               
                }
                                }
        Image(systemName: "plus.circle")
            .bold()
            .foregroundColor(Color.light)
            .font(.system(size: 25))
        .padding(.top, 120.0)
                            }
                        }
                        if option.id  == 1 && isSelected {
                            ZStack{ Text(".")
            .frame(width:360, height: 150)
        .overlay(
                RoundedRectangle(cornerRadius: 5)
            .foregroundColor(.g)
            .padding(.top,-15.0)
                                    )
        .padding(.top, 20.0)
                                Text(".")
                .frame(width:340, height: 80)
            .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .foregroundColor(.light)
                .padding(.top,-15.0)
                                        )
        HStack {
                Text("Number of tickets:")
                .padding(.leading, 20.0)
                .padding(.top, -20.0)
                    .font(.headline)
                    TextField("", text: $userInput)
                                        .textFieldStyle(PlainTextFieldStyle())
                             .padding(.top, -20.0)
                                }
        Image(systemName: "plus.circle")
        .bold()
        .foregroundColor(Color.light)
            .font(.system(size: 25))
        .padding(.top, 120.0)
                            }
                        }
                        if option.id  == 2 && isSelected {
                            ZStack{ Text(".")
            .frame(width:360, height: 150)
        .overlay(
                RoundedRectangle(cornerRadius: 5)
            .foregroundColor(.g)
            .padding(.top,-15.0)
                                    )
        .padding(.top, 20.0)
                                Text(".")
                .frame(width:340, height: 90)
            .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .foregroundColor(.light)
                .padding(.top,1.0)
                                        )
        Image(systemName: "plus.circle")
            .bold()
            .foregroundColor(Color.white)
                .font(.system(size: 50))
                .padding(.top, 5.0)
                                
           
                                }
                            }
                    }
                    }
                }
            }
        

#Preview {
    ServicesDetailsPage()
}
