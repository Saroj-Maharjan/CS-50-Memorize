//
//  MemorizeApp.swift
//  Memorize
//
//  Created by saroj maharjan on 30/4/2023.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
