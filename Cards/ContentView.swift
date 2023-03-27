//
//  ContentView.swift
//  Cards
//
//  Created by Nitin on 3/27/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var router = Router<Path>()
    
    var body: some View {
        NavigationStack(path: $router.paths) {
                WelcomeView()
                .navigationDestination(for: Path.self) { path in
                        switch path {
                        case .A: WelcomeView()
                        case .B: ChoiceView()
                        case .C: SelectedCard()
                        case .D: ApplyView()
                        }
                    }
                }.environmentObject(router)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
