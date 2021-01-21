//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by 원상혁 on 2021/01/16.
//
//  ViewModel

import SwiftUI


class EmojiMemoryGame {
    //private(set) not modify but can see like glass door
    private(set) var model : MemoryGame<String> = EmojiMemoryGame.creatMemoryGame()
    
    static func creatMemoryGame() -> MemoryGame<String> {
        let emojis = ["😀","😭","😗"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
        
    }

    
    // MARK: -Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card){
        model.choose(card:card)
    }
}

