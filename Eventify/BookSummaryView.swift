//
//  BookSummaryView.swift
//  Eventify
//
//  Created by Rania on 18/06/1445 AH.
//

import SwiftUI

struct BookSummaryView: View {
    @State private var showsheet: Bool = false
    @State private var showTicketView = false
    @Binding var selectedDate: Date
    
    let vipQuantity: Int
    let regularQuantity: Int
    
    var total: Int {
            (vipQuantity * 200) + (regularQuantity * 100)
        }
    
    var formattedDate: String {
            let formatter = DateFormatter()
            formatter.dateFormat = "dd MMMM yyyy"
            return formatter.string(from: selectedDate)
        }
    
    var body: some View {
        
            VStack(alignment: .leading ,spacing: 20){
                
                Text("Booking Summary")
                    .fontWeight(.bold)
                Text(formattedDate)
                HStack {
                                // Updated to use "\(vipQuantity) X VIP Lane"
                                Text("\(vipQuantity) X VIP Lane")
                                Spacer()
                                // Updated to use "\(vipQuantity * 200) SAR"
                                Text("\(vipQuantity * 200) SAR")
                            }
                            .padding(.bottom, 20)

                            HStack {
                                // Updated to use "\(regularQuantity) X Regular Lane"
                                Text("\(regularQuantity) X Regular Lane")
                                Spacer()
                                // Updated to use "\(regularQuantity * 100) SAR"
                                Text("\(regularQuantity * 100) SAR")
                            }
                            .padding(.bottom, 20)

                            Divider()
                                .overlay(Color.black)
                            
                            HStack {
                                Text("Total")
                                    .fontWeight(.bold)
                                Spacer()
                                // Updated to use "\(total) SAR"
                                Text("\(total) SAR")
                                    .fontWeight(.bold)
                            }
                
                Text("Payment Methods")
                    .fontWeight(.bold)
                HStack{
                    Button(action: {
                    }) {
                        Image("Pay")
                            .resizable()
                            .frame(width: 60, height: 24)
                            .padding(10)
                            .accentColor(.dark)
                            .background(Color(.light))
                            .cornerRadius(18)
                            .overlay(
                                RoundedRectangle(cornerRadius: 18)
                                    .stroke(Color.light, lineWidth: 2))
                    }
                    Button(action: {
                    }) {
                        Image("Mada")
                            .resizable()
                            .frame(width: 60, height: 24)
                            .padding(10)
                            .accentColor(.dark)
                            .cornerRadius(18)
                            .overlay(
                                RoundedRectangle(cornerRadius: 18)
                                    .stroke(Color.light, lineWidth: 2))
                    }
                }
                Spacer()
                NavigationLink(destination: TicketView(), isActive: $showTicketView) {
                                    EmptyView()
                                }
                                .isDetailLink(false)

                                Button {
                                    showsheet.toggle()
                                } label: {
                                    Spacer()
                                    Text("Proceed to payment")
                                    Spacer()
                                }
                                .buttonStyle(.bordered)
                                .controlSize(.large)
                                .background(Color("Dark"))
                                .foregroundColor(.white)
                                .cornerRadius(20)
                                .padding()
                                .sheet(isPresented: $showsheet) { PaymentView(showTicketView: $showTicketView, total: total)
                                                    .presentationDetents([.height(450)])
                                    
                                }
                            
            }.padding()
            }
        }

#Preview {
    BookSummaryView(selectedDate: .constant(Date()), vipQuantity: 2, regularQuantity: 3) 
}
