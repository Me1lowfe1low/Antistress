//
//  InitialBubleState.swift
//  Antistress
//
//  Created by Дмитрий Гордиенко on 05.01.2023.
//

import Foundation

enum InitialBubleState: String, CaseIterable   {
    case mode0 = "bubblewrap"
    
    init?(rawValue: RawValue) {
        switch(rawValue) {
            default:
                self = .mode0
        }
    }
}
