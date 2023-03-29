//
//  CardsApp.swift
//  Cards
//
//  Created by Nitin on 3/27/23.
//

import SwiftUI

@main
struct CardsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.locale, .init(identifier: "en"))
        }
    }
}
