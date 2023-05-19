//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by saroj maharjan on 3/5/2023.
//

import SwiftUI

// @[Obserable Object] make it reactive view when model change.
class EmojiMemoryGame: ObservableObject {
    typealias Card = MemoryGame<String>.Card
    
    // Published will make sure the UI change when the model changes.
    @Published private var model: MemoryGame<String> = createMemoryGame()
    
    private static func createMemoryGame() -> MemoryGame<String> {
        let emojisAll: Array<String> = ["🧠","🧟‍♀️","🧛‍♂️","🧵","🧶","🎓","🧳","🐶","🦊","🐯","🦁","🐵","🐸","🐮","🐷","🐼","🐨","🐰","🐹","🦉","🦆","🐔","🐗","🐺","🦇","🦄","🐴","🐌","🦋","🐝","🐞","🦕","🦖","🐢","🐙","🦐","😄","😎","🤓","💩","🎃","👣","🦷","🐬","🐳","🐟","🐠","🐡","🦈","🐊","🦧","🐘","🐫","🐾","🦥","🦦","🦨","🌵","🎄","🌴","👻","🍂","🌹","🌸","🌼","⭐️","🌍","🔥","☃️","🍏","🍎","🥥","🥩","🧀","🍗","🍤","🥟","🍿","🎂","🍪","🍩","🧁","⚽️","🏀","🏈","🏆","🎲","🚕","✈️","🚀","🗿","🌋","💰","💎","💊","🧼","🦠","🎁","📦"]
        let emojis = emojisAll[randomPick: 9]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }
    
    // Mark: - Access to the Model
    var cards: Array<MemoryGame<String>.Card>{
        model.cards
    }
    
    //Mark: - Intent(S)
    func choose(_ card: MemoryGame<String>.Card){
        model.choose(card)
    }

    func resetGame(){
        model = EmojiMemoryGame.createMemoryGame()
    }
}
