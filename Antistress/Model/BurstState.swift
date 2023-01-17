//
//  BurstState.swift
//  Antistress
//
//  Created by Дмитрий Гордиенко on 05.01.2023.
//

import Foundation

enum BurstState: String, CaseIterable  {
    case mode0 = "bubblewrappushed"
    case mode1 = "bubblewrappushed01"
    case mode2 = "bubblewrappushed02"
    case mode3 = "bubblewrappushed03"
    
    init?(rawValue: RawValue) {
        switch(rawValue) {
            case "bubblewrappushed01":
                self = .mode1
            case "bubblewrappushed02":
                self = .mode2
            case "bubblewrappushed03":
                self = .mode3
            default:
                self = .mode0
        }
    }
}
