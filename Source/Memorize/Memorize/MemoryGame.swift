//
//  MemoryGame.swift
//  Memorize
//
//  Created by 원상혁 on 2021/01/16.
//
//  Model
import Foundation

struct MemoryGame<CardContent> {
    var cards : Array<Card>
    
    init(numberOfPairsOfCards: Int , cardContentFactory: (Int) -> CardContent) {
        cards = Array<Card>()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content,id:pairIndex*2))
            cards.append(Card(content: content,id:pairIndex*2+1))
        }
    }
    
    func choose(card: Card){
        print("card chosen: \(card)")
    }
    
    struct Card : Identifiable {
        var isFaceUp : Bool = true
        var isMatched : Bool = true
        var content : CardContent
        var id: Int
    }
}
