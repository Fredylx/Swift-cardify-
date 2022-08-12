//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Fredy H Lopez on 11/11/21.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    typealias Card = EmojiMemoryGame<String>.Card
    
    private static let emojis = ["🚂","🚀","🚁","🛳", "🚝", "⛴", "🛸", "🛶", "🚤", "⛵️", "🛰", "✈️", "🏍", "🚲", "🚜", "🦽", "🛴", "🏎", "🚒", "🚗", "🚕", "🚌"]
    
    private static func createEmojiMemoryGame() -> EmojiMemoryGame<String> {
        EmojiMemoryGame<String>(numberOfPairsOfCards: 7) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    @Published private var model: EmojiMemoryGame = createEmojiMemoryGame()  //Cannot find fix
    
    var cards: Array<EmojiMemoryGame<String>.Card> {  // Cannot find fix
        model.cards
    }
    
    // Mark: - Intent(s)
    
    func choose(_ card: MemoryGame<String>.Card) {
        model.choose(card)
    }
    
    func shuffle() {
        model.shuffle()
    }
    
    func restart() {
        model = EmojiMemoryGame.createMemoryGame() 
    }
}
