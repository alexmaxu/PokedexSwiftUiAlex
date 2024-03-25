//
//  PokemonDetailView.swift
//  PokedexAlex
//
//  Created by Alex  on 25/3/24.
//

import SwiftUI

struct PokemonDetailView: View {
    let pokemon: Pokemon
    var body: some View {
        VStack {
            Text(pokemon.name)
                .font(.largeTitle)
                .bold()
            Text(pokemon.types)
                .font(.title)
            Spacer().frame(height: 100)
            PokemonAvatar(pokemon: pokemon)
                .scaleEffect(3)
            Spacer().frame(height: 60)
            Text("Ataques:")
                .font(.headline)
                .bold()
            HStack {
                VStack {
                    Text("Ataque1")
                    Text("Ataque3")
                }
                VStack {
                    Text("Ataque2")
                    Text("Ataque4")
                }
            }
            
            
        }
        .padding(.top)
        Spacer()
    }
}

#Preview {
    PokemonDetailView(pokemon: .test)
}
