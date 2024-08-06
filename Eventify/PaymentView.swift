//
//  PaymentView.swift
//  Eventify
//
//  Created by Rania on 18/06/1445 AH.
//

import SwiftUI

struct PaymentView: View {
    @Binding var showTicketView: Bool
    @Environment(\.presentationMode) var presentationMode
    
    var total: Int
    
    var body: some View {
            VStack(alignment: .leading, spacing: 20){
                Text("Pay")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .padding()
                ZStack{
                    Rectangle()
                        .frame(width: 350, height: 110)
                        .cornerRadius(20)
                        .foregroundColor(.g)
                    HStack{
                        Image("Card")
                            .resizable()
                            .frame(width: 100, height: 60)
                            .padding()
                        
                        VStack(alignment: .leading){
                            Text("Mada Debiit")
                                .fontWeight(.semibold)
                            Text("1234")
                                
                        }
                        
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.blue)
                            .padding()
                    }
                }
                
                Text("\(total) SAR")
                                .fontWeight(.bold)
                                .padding(.top, 60)
                                .padding()
                
                Button {
                                showTicketView.toggle()
                            } label: {
                                Spacer()
                                Text("Pay with Passcode")
                                Spacer()
                            }
                            .buttonStyle(.bordered)
                            .controlSize(.large)
                            .background(Color(.blue))
                            .foregroundColor(.white)
                            .cornerRadius(20)
                            .padding()
                        }
                        .padding()
                        
            }
            }
    


#Preview {
    PaymentView(showTicketView: .constant(false), total: 100)
}
