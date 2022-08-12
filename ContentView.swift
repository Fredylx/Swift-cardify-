//
//  ContentView.swift
//  MemorizeThis
//
//  Created by Fredy H Lopez on 2/25/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Memorize!").font(.largeTitle)
            .padding()
    }
}

var vehicles: some View {
    Button {
        emojis = ["🚌", "🚗", "🚕", "🚒", "🚜", "🏎","", "✈️", "🚤", "🛴", "🚲", "🏍", "🚀", "🚂", "🚁", "🛫", "🛳", "🚝", "⛴", "🛶", "🛸", "⛵️", "🏎", "🚇", "🚢", "🚤", "🛩", "🚉", "🚅"]
        randomNumberEmjois = Int.random(in: 4..., emojis.count)
        } label: {
            VStack {
                Image(systemName: "transportaion")
                Text("Vehicles")
                    .font(.footnote)
            }
        } . padding (.horizontal)
    }

    var bugs:  some View {
        Button {
            emojis = ["🦂","🕸","🕷","🦗","🦟","🪳","🪲","🪰","🐜","🐞","🐌","🦋","🐛","🪱","🐝"]
            randomNumberEmojis = Int.random(in: 4..., emojis.count)
        } label: {
            VStack {
                Image(systemName: "ant")
                Text("Bugs")
                    .font(.footnote)
            }
        } .padding(.horizontal)
    }
    


















struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
