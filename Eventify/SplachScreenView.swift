//
//  SplachScreenView.swift
//  Eventify
//
//  Created by Rania on 12/06/1445 AH.
//

import SwiftUI

struct SplachScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    
    var body: some View {
        if isActive{
            ContentView()
        } else {
            VStack{
                VStack{
                    ZStack{
                        Color("Light").ignoresSafeArea()
                        Image("Logo")
                            .resizable()
                            .frame(width: 150, height: 200)
                        
                            .scaleEffect(size)
                            .opacity(opacity)
                            .onAppear{
                                withAnimation(.easeIn(duration: 1.5)){
                                    self.size = 0.9
                                    self.opacity = 1.0
                                }
                            }
                    }
                    
                    .onAppear{
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.8){
                            self.isActive = true
                        }
                    }
                }
            }
        }
    }
    }


#Preview {
    SplachScreenView()
}
