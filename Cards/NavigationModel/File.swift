//
//  File.swift
//  Cards
//
//  Created by Nitin on 3/27/23.
//

import Foundation

final class Router<T: Hashable>: ObservableObject {
    @Published var paths: [T] = []
    
    func push(_ path: T) {
        paths.append(path)
    }
    
    func pop() {
            paths.removeLast(1)
        }
    
    func pop2() {
            paths.removeLast(1)
            paths.removeLast(1)
        }
}

enum Path {
    case A
    case B
    case C
    case D
}
