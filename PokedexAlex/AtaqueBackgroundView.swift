//
//  AtaqueBackgroundView.swift
//  PokedexAlex
//
//  Created by Alex  on 25/3/24.
//

import SwiftUI

struct AtaqueBackgroundView: View {
    let ataque: String
    var body: some View {
        ZStack {
            Text(ataque)
                .font(.headline)
                .frame(width: 125, height: 50)
                .background(Color.gray.opacity(0.3))
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(lineWidth: 4)
                        .fill(.gray)
                }
        }
    }
}

#Preview {
    AtaqueBackgroundView(ataque: "Ataque1")
}
