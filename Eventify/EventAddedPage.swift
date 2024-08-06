//
//  EventAddedPage.swift
//  EventifyProject
//
//  Created by Noura on 14/06/1445 AH.
//

import SwiftUI

struct EventAddedPage: View {
    var body: some View {
        VStack(spacing:80){
            ZStack{
Image(systemName: "circle.fill")
.font(.system(size: 250))
.bold()
.foregroundColor(Color("Light"))
.font(.largeTitle)
.padding(.horizontal, 27.0)
.padding(.vertical, -60.0)
.padding(.top, 40.0)
                
Image(systemName: "checkmark")
.bold()
.font(.system(size: 170))
.foregroundColor(.white)
.padding(.top, 50.0)
            }

            Text("Event Added Successfully")
                .bold()
                .font(.system(size: 20))
            
            NavigationLink(destination: EventView()) {
                Text("Go to Event Page")
                    .font(.system(size: 23))
                    .foregroundColor(.white)
                    .frame(width: 330, height: 75, alignment: .center)
                    
            }
            .background(Color("Dark"))
            .cornerRadius(100)
            .padding(.top,80.0)
            .padding(.bottom, -100.0)
            .padding(.horizontal)
        }
            
            
            
            
        }
    }


#Preview {
    EventAddedPage()
}
