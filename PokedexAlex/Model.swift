//
//  Model.swift
//  PokedexAlex
//
//  Created by Alex  on 22/3/24.
//

import Foundation

struct Pokemons: Codable {
    let pokemon: [Pokemon]
}

struct Pokemon: Codable, Identifiable {
    let id = UUID()
    let name: String
    let type: [String]
    let imageURL: URL
    
    var types: String {
        type.formatted(.list(type: .and))
    }
    
    enum CodingKeys: String, CodingKey {
        case name, type, imageURL
    }
}

extension Pokemon {
    static let test = Pokemon(name: "Pikachu", type: ["Electric"], imageURL: URL(string: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png")!)
}

func getPokemons() -> [Pokemon] {
    guard let url = Bundle.main.url(forResource: "pokemons", withExtension: "json") else { return [] }
    do {
        let data = try Data(contentsOf: url)
        return try JSONDecoder().decode(Pokemons.self, from: data).pokemon
    } catch {
        return []
    }
}
