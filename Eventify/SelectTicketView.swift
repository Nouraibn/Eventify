//
//  SelectTicketView.swift
//  Eventify
//
//  Created by Rania on 14/06/1445 AH.
//

import SwiftUI

struct SelectTicketView: View {
    @State private var vipQuantity = 0
    @State private var regularQuantity = 0
    @Binding var selectedDate: Date
    
    var body: some View {
       
        VStack(alignment: .leading, spacing: 10){
            Text("2. Select Tickets")
                .font(.title2)
                .bold()
            Text("Tickets prices include VAT (15%)")
                .padding(.bottom, 33.0)
                .foregroundColor(.gray)
            TicketRow(name: "VIP Lane", price: "200 SAR", quantity: $vipQuantity)
                        Divider()
                        TicketRow(name: "Regular Lane", price: "100 SAR", quantity: $regularQuantity)

            //.navigationTitle("Select Tickets")
            //.navigationBarHidden(true)
            
            
            Divider()
            
            
            Spacer()
            HStack{
                Spacer()
                Button{
                }label: {
                    NavigationLink(destination: BookSummaryView(selectedDate: $selectedDate, vipQuantity: vipQuantity, regularQuantity: regularQuantity)) {
                                    Spacer()
                                    Text("Continue")
                                    Label(" ", systemImage: "chevron.right")
                                    Spacer()
                                }
                    }
                    .buttonStyle(.bordered)
                    .controlSize(.large)
                    .background(Color("Dark"))
                    .foregroundColor(.white)
                    .cornerRadius(20)
                    .padding()
                }
            }
            .padding()
        }
    }

#Preview {
    SelectTicketView(selectedDate: .constant(Date()))
}
