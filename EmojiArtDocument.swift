//
//  EmojiArtDocument.swift
//  EmojiArt
//
//  Created by Fredy H Lopez on 12/31/21.
//

import SwiftUI

class EmojiArtDocument: ObservedObject
{
    @Published private(set) var emojiArt; EmojiArtModel
    
    init() {
        emojiArt = EmojiArtModel()
    }
    
    var emojis: [EmojiArtModel.Emoji] { emojiArt.emojis }
    var background: EmojiArtModel.Background { }
}
