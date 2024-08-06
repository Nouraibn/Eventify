//
//  ExploreView.swift
//  Eventify
//
//  Created by Rania on 12/06/1445 AH.
//

import SwiftUI

struct ExploreView: View {
    
    @State private var currrentIndex = 0
    let images  : [String] = ["NewYear","Expo","Formula"]
    let titles : [String] = ["New Year Events!","Expo 2030","Formula 1 in Jeddah!"]
    
    
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: true){
                VStack(spacing: 20){
                ZStack(alignment: .bottom){
                    Image(images[currrentIndex])
                        .resizable()
                        .frame(width:350, height: 200)
                        .cornerRadius(15)
                        .scaledToFit()
                    Text(titles[currrentIndex])
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .frame(width: 350, height: 50)
                        .background(.ultraThinMaterial)
                        .cornerRadius(10)
                }
                HStack{
                    ForEach(0..<images.count){ index in
                        Circle()
                            .fill(self.currrentIndex == index ? Color("Light") : Color.gray)
                    }
                    .frame(width: 10, height: 10)
                }
                .navigationTitle("Explore")
                .onAppear{
                    Timer.scheduledTimer(withTimeInterval: 3, repeats: true){
                        timer in
                        if self.currrentIndex + 1 == self.images.count{
                            self.currrentIndex = 0
                        }else{
                            self.currrentIndex += 1
                        }
                        if self.currrentIndex + 1 == self.titles.count{
                            self.currrentIndex = 0
                        }else{
                            self.currrentIndex += 1
                        }
                    }
                }
                HStack{
                    Text("Featured Events")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Spacer()
                    
                        NavigationLink(destination: EventsView()){
                            Text("See More")
                                .foregroundColor(.dark)
                                .cornerRadius(150)
                                .underline()
                                .padding()
                        }
                   
                }
                    HStack{
                        ZStack(alignment: .bottom){
                            Image("mdlBeast")
                                .resizable()
                                .frame(width: 168, height: 165)
                                .cornerRadius(10)
                            VStack{
                                Text("MDL Beast")
                                    .foregroundColor(.white)
                                    .fontWeight(.semibold)
                            }
                            .padding()
                            .frame(width: 168)
                            .background(.ultraThinMaterial)
                            .cornerRadius(5)
                        }
                        .shadow(radius: 1.5)
                        Spacer()
                        ZStack(alignment: .bottom){
                            Image("Formula")
                                .resizable()
                                .frame(width: 168, height: 165)
                                .cornerRadius(10)
                            VStack{
                                Text("Formula 1")
                                    .foregroundColor(.white)
                                    .fontWeight(.semibold)
                            }
                            .padding()
                            .frame(width: 168)
                            .background(.ultraThinMaterial)
                            .cornerRadius(5)
                        }
                        .shadow(radius: 1.5)
                    }
                    HStack{
                        ZStack(alignment: .bottom){
                            Image("BookFair")
                                .resizable()
                                .frame(width: 168, height: 165)
                                .cornerRadius(10)
                            VStack{
                                Text("Riyadh Book Fair")
                                    .foregroundColor(.white)
                                    .fontWeight(.semibold)
                            }
                            .padding()
                            .frame(width: 168)
                            .background(.ultraThinMaterial)
                            .cornerRadius(5)
                        }
                        .shadow(radius: 1.5)
                        Spacer()
                        ZStack(alignment: .bottom){
                                NavigationLink(destination: EventView()){
                                    Image("Expo")
                                        .resizable()
                                        .frame(width: 168, height: 165)
                                        .cornerRadius(10)
                                }
                            
                            VStack{
                                Text("Expo 2030")
                                    .foregroundColor(.white)
                                    .fontWeight(.semibold)
                            }
                            .padding()
                            .frame(width: 168)
                            .background(.ultraThinMaterial)
                            .cornerRadius(5)
                        }
                        .shadow(radius: 1.5)
                            
                    }
                }
                .padding()
            }
        
    }
                       }
}

#Preview {
    ExploreView()
}
