//
//  ContentView.swift
//  Memorize
//
//  Created by 원상혁 on 2021/01/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach (0..<4) { index in
                CardView()
                }
        }
            .padding()
            .foregroundColor(.orange)
            .font(Font.title)
    }
}

struct CardView : View {
    var body : some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20.0).fill(Color.white)
            RoundedRectangle(cornerRadius: 20.0).stroke()
            Text("😄")

        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
