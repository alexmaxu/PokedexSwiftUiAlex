//
//  PokemonCell.swift
//  PokedexAlex
//
//  Created by Alex  on 25/3/24.
//

import SwiftUI

struct PokemonCell: View {
    let pokemon: Pokemon
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(pokemon.name)
                Text(pokemon.types)
                    .font(.footnote)
            }
            Spacer()
            PokemonAvatar(pokemon: pokemon)
                .background{
                    Color(white: 0.9)
                }
                .clipShape(Circle())
                .shadow(radius: 5,x: 0, y: 5 )
        }
    }
}

#Preview {
    PokemonCell(pokemon: .test)
}
