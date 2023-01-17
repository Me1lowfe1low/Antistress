//
//  BubbleViewModel.swift
//  Antistress
//
//  Created by Дмитрий Гордиенко on 13.01.2023.
//

import Foundation

class BubbleViewModel: ObservableObject {
    @Published var elements: Int 
    @Published var array: [Bubble] = []
    
    init(elements: Int ) {
        self.elements = elements
        for _ in (0..<elements) {
            let bubble = Bubble(burstView: BurstState.allCases.randomElement()!.rawValue)
            self.array.append(bubble)
        }
    }
    
    func repair() {
        for bubble in (0..<self.elements) {
            self.array[bubble].setDefaultState()
        }
    }
}
