//
//  ContentView.swift
//  PokedexAlex
//
//  Created by Alex  on 22/3/24.
//

import SwiftUI

struct ContentView: View {
    
    let pokemons = getPokemons()
    
    var body: some View {
        NavigationView {
            List(pokemons) { pokemon in
                NavigationLink {
                    PokemonDetailView(pokemon: pokemon)
                    
                } label: {
                    HStack {
                        PokemonCell(pokemon: pokemon)
                    }
                }
            }
            .navigationTitle("Pokemons")
        }
    }
}

#Preview {
    ContentView()
}
