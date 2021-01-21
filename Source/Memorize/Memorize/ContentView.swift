//
//  ContentView.swift
//  Memorize
//
//  Created by 원상혁 on 2021/01/12.
//

import SwiftUI

struct ContentView: View {
    var viewModel: EmojiMemoryGame
    
    var body: some View {
        HStack {
            ForEach (viewModel.cards) { card in
                CardView(card: card).onTapGesture(perform: {
                    self.viewModel.choose(card: card)
                })
            }
        }
            .padding()
            .foregroundColor(.orange)
            .font(Font.title)
    }
}

struct CardView : View {
    var card : MemoryGame<String>.Card
    
    var body : some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: 20.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 20.0).stroke()
                Text(card.content)
            }
            else {
                RoundedRectangle(cornerRadius: 20.0).fill()
            }

        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(viewModel: EmojiMemoryGame())
    }
}
