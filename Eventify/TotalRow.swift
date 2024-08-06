//
//  TotalRow.swift
//  Eventify
//
//  Created by Rania on 18/06/1445 AH.
//

import SwiftUI

struct TotalRow: View {
    var title: String
    var amount: String

    var body: some View {
        HStack {
            Text(title)
                .fontWeight(.bold)
            Spacer()
            Text(amount)
                .fontWeight(.bold)
        }
    }
}
