//
//  PokemonAvatar.swift
//  PokedexAlex
//
//  Created by Alex  on 25/3/24.
//

import SwiftUI

struct PokemonAvatar: View {
    let pokemon: Pokemon
    var body: some View {
        AsyncImage(url: pokemon.imageURL) { image in
            image
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 130)
            
        } placeholder: {
            ProgressView()
                .controlSize(.extraLarge)
        }
        
           
    }
}

#Preview {
    PokemonAvatar(pokemon: .test)
}
