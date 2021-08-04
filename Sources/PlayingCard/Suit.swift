//
//  Suit.swift
//  
//
//  Created by Roman I Pozdeev on 04.08.2021.
//

import Foundation

public enum Suit: String, CaseIterable {
    case spades, hearts, diamonds, clubs
}

// MARK: - Comparable

extension Suit: Comparable {
    public static func <(lhs: Suit, rhs: Suit) -> Bool {
        switch (lhs, rhs) {
        case (_, _) where lhs == rhs:
            return false
        case (.spades, _),
        (.hearts, .diamonds), (.hearts, .clubs),
        (.diamonds, .clubs):
            return false
        default:
            return true
        }
    }
}

// MARK: - CustomStringConvertible

extension Suit: CustomStringConvertible {
    public var description: String {
        switch self {
        case .spades: return "♠︎"
        case .hearts: return "♡"
        case .diamonds: return "♢"
        case .clubs: return "♣︎"
        }
    }
}
