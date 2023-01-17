//
//  Bubble.swift
//  Antistress
//
//  Created by Дмитрий Гордиенко on 05.01.2023.
//

import Foundation

struct Bubble: Identifiable {
    let id = UUID()
    var burstView: String
    var isBurst: Bool = false

    mutating func burstTheBubble() {
        self.isBurst = true
    }
    
    mutating func setDefaultState() {
        self.isBurst = false
    }
    
    func getBubbleView() -> String {
        self.isBurst ? burstView : InitialBubleState.allCases.randomElement()!.rawValue
    }
    
    #if DEBUG
    static let bubbleSample = Bubble(burstView: BurstState.allCases.randomElement()!.rawValue)
    #endif
}
