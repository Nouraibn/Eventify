//
//  TicketRow.swift
//  Eventify
//
//  Created by Rania on 18/06/1445 AH.
//

import SwiftUI

struct TicketRow: View {
    
    var name: String
            // Updated 'price' to be a String
            var price: String
            @Binding var quantity: Int

        var body: some View {
            HStack {
                VStack(spacing: 10) {
                    Text(name)
                        .fontWeight(.bold)
                    Text(price)
                                            .padding(.leading, 20)
                }

                Spacer()

                Button(action: {
                    if quantity > 0 {
                        quantity -= 1
                    }
                }) {
                    Text("-")
                }

                Text("\(quantity)")

                Button(action: {
                    quantity += 1
                }) {
                    Text("+")
                }
            }
        }
    }
