//
//  ContentView.swift
//  EventifyProject
//
//  Created by Noura on 12/06/1445 AH.
//

import SwiftUI

struct OrganizerSignupPage: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    
var body: some View {

 VStack {
  HStack {
    Image(systemName: "circle")
     .bold()
     .foregroundColor(Color("Light"))
     .font(.largeTitle)
     .font(.system(size: 20))
     .padding(.horizontal, 40.0)
     .padding(.vertical, -60.0)
     .padding(.top, 40.0)
      
    Rectangle()
     .frame(width: 90, height: 6)
     .foregroundColor(Color("Dark"))
     .padding(.horizontal, -52.0)
     .padding(.vertical, -43.0)
     .padding(.top, 40.0)

    Image(systemName: "circle")
     .foregroundColor(Color("Dark"))
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
      
                }
                
HStack(spacing:120){
    
    Text("Create Account")
     .font(.system(size: 10))
     .foregroundColor(Color("Light"))
     .padding(.top, -55.0)
     .padding(.horizontal,4.0)
                    
    Text("Event Info")
     .font(.system(size: 10))
     .foregroundColor(.gray)
     .padding(.horizontal,-60.0)
     .padding(.top, -55.0)
    
    Text("Services")
     .font(.system(size: 10))
     .foregroundColor(.gray)
     .padding(.top, -55.0)
     .padding(.horizontal,-56.0)
                    
                }
                
VStack(alignment: .leading) {
    
    Text("Owner's Name")
     .bold()
     .font(.system(size: 17))
     .font(.subheadline)
     .foregroundColor(.black)
     .padding(.top, -40.0)
                    
    TextField("Name", text: $name)
     .textFieldStyle(RoundedBorderTextFieldStyle())
     .padding(.top, -20.0)
     .padding(.bottom, 30.0)
                    
    Text("Email")
     .bold()
     .font(.system(size: 17))
     .multilineTextAlignment(.leading)
     .font(.subheadline)
     .foregroundColor(.black)
                    
    TextField("Email", text: $email)
     .textFieldStyle(RoundedBorderTextFieldStyle())
     .padding(.bottom, 30.0)
                    
    Text("Password")
     .bold()
     .font(.system(size: 17))
     .multilineTextAlignment(.leading)
     .font(.subheadline)
     .foregroundColor(.black)
                    
    //TextField("Password", text: $password)
    SecureField("Password", text: $password)
     .textFieldStyle(RoundedBorderTextFieldStyle())
     .padding(.bottom, 30.0)
                    
    Text("Password Confirmation")
     .bold()
     .font(.system(size: 17))
     .multilineTextAlignment(.leading)
     .font(.subheadline)
     .foregroundColor(.black)
                    
     //TextField("Confirm Password", text: $confirmPassword)
    SecureField("Confirm Password", text: $confirmPassword)
     .textFieldStyle(RoundedBorderTextFieldStyle())
     .padding(.bottom, 190.0)
                    
NavigationLink(destination: EventInfoPage()) {
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
               
            }
            .padding()
    }
}

struct OrganizerSignupPage_Previews: PreviewProvider {
    static var previews: some View {
        OrganizerSignupPage()
    }
}

