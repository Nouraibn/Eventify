//
//  EventsView.swift
//  Eventify
//
//  Created by Rania on 12/06/1445 AH.
//

import SwiftUI

struct EventsView : View {
    var body: some View {
        
            ScrollView(.vertical, showsIndicators: true){
                VStack(alignment: .leading, spacing: 20){
                    ZStack(alignment: .bottom){
                        Button{
                        }label: {
                            NavigationLink(destination: EventView()){
                                Image("Expo")
                                    .resizable()
                                    .frame(width: 350, height: 180)
                                    .cornerRadius(26)
                            }
                        }
                        NavigationLink(destination: EventView()){
                            Image("Expo")
                                .resizable()
                                .frame(width:350, height: 180)
                                .cornerRadius(26)
                        }
                        HStack{
                            Text("Expo 2030")
                                .foregroundColor(.white)
                                .fontWeight(.semibold)
                            Spacer()
                            Text("4 Jan")
                                .foregroundColor(.white)
                                .fontWeight(.light)
                        }
                        .padding()
                        .frame(width: 350)
                        .background(.ultraThinMaterial)
                        .cornerRadius(10)
                    }
                    ZStack(alignment: .bottom){
                        Image("NewYear")
                            .resizable()
                            .frame(width:350, height: 180)
                            .cornerRadius(26)
                        HStack{
                            Text("New Year Event")
                                .foregroundColor(.white)
                                .fontWeight(.semibold)
                            Spacer()
                            Text("1 Jan")
                                .foregroundColor(.white)
                                .fontWeight(.light)
                        }
                        .padding()
                        .frame(width: 350)
                        .background(.ultraThinMaterial)
                        .cornerRadius(10)
                    }
                    ZStack(alignment: .bottom){
                        Image("Formula")
                            .resizable()
                            .frame(width:350, height: 180)
                            .cornerRadius(26)
                        HStack{
                            Text("Formula 1")
                                .foregroundColor(.white)
                                .fontWeight(.semibold)
                            Spacer()
                            Text("9 Feb")
                                .foregroundColor(.white)
                                .fontWeight(.light)
                        }
                        .padding()
                        .frame(width: 350)
                        .background(.ultraThinMaterial)
                        .cornerRadius(10)
                    }
                    Spacer()
                }
                //.navigationTitle("Events")
               // .navigationBarTitleDisplayMode(.inline)
            }
        
    }
}

#Preview {
    EventsView()
}
