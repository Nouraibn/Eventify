//
//  Parking.swift
//  EvetnfyApp
//
//  Created by Deemah on 13/06/1445 AH.
//

import SwiftUI

struct ParkingView: View {
    var body: some View {
        @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
        // NavigationView {
        VStack {
            //  Image(systemName: "chevron.backward")
            
            
            
            
            
          
            HStack{
                
                Spacer()
                VStack(spacing:4){
                    Text("Parking Available")
                       // .navigationBarBackButtonHidden(true)
                        .font(.system(size: 20))
                        .fontWeight(.semibold)
                    
                }
               
                Spacer()
                
            }
            .padding(.top,40)
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
                    .frame(width: 340, height: 170)
                    .cornerRadius(10)
                Text("Parking Area 1")
                    .font(.system(size: 16))
                    .foregroundColor(Color("Dark"))
                    .position(x:90, y:80)
                    .bold()
                
                Text("Available 96 / 100")
                    .font(.system(size: 13))
                    .position(x:306, y:210)
                    .foregroundColor(Color("Dark"))
                    .fontWeight(.semibold)
                
                ZStack {
                    Circle()
                        .fill(Color.white)
                         .frame(width: 120, height: 120)
                      
                    Circle()
                        .stroke(
                    
                            Color.dark.opacity(0.5),
                            lineWidth: 10
                        )
                        .frame(width: 110, height: 110)
                    Circle()

                        .trim(from: 0, to: 0.48)
                       
                        .stroke(
                            Color.dark,
                            // 1
                            style: StrokeStyle(
                                lineWidth: 10,
                                lineCap: .round
                            )
                           
                        )
                        //.animation(.easeIn, value:  Color.dark)
                        .frame(width: 110, height: 110)
                        .rotationEffect(.degrees(-90))
                       
                        

                    Text("48%")
                        .font(.system(size: 16))
                    
                }
            }
            .position(x:200, y:-200)
            
            
            Spacer()
        }
    }
    // }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ParkingView()
        }
    }
}
    

