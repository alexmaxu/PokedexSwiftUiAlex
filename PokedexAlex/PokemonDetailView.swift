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
            Spacer().frame(height: 60)
            PokemonAvatar(pokemon: pokemon)
                .scaleEffect(3)
            Spacer().frame(height: 40)
            Text("Ataques:")
                .font(.headline)
                .bold()
                .padding(.top)
            HStack {
                VStack {
                    AtaqueBackgroundView(ataque: "Ataque 1")
                    AtaqueBackgroundView(ataque: "Ataque 3")
                }
                
                VStack {
                    AtaqueBackgroundView(ataque: "Ataque 2")
                    AtaqueBackgroundView(ataque: "Ataque 4")
                }
            }
            
            Text("Naturaleza:")
                .font(.headline)
                .bold()
                .padding(.top)
            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sit amet ipsum congue, iaculis est in, accumsan nisi. Donec egestas libero at ante luctus placerat.")
                .padding(.horizontal)
            
        }
        Spacer()
    }
}

#Preview {
    PokemonDetailView(pokemon: .test)
}
