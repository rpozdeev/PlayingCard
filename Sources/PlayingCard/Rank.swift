//
//  Rank.swift
//  
//
//  Created by Roman I Pozdeev on 04.08.2021.
//

import Foundation

public enum Rank: Int, CaseIterable {
    case two = 2
    case three, four, five, six, seven, eight, nine, ten
    case jack, queen, king, ace
}

// Comparable
extension Rank: Comparable {
    public static func <(lhs: Rank, rhs: Rank) -> Bool {
        switch (lhs, rhs) {
        case (_, _) where lhs == rhs:
            return false
        case (.ace, _):
            return false
        default:
            return lhs.rawValue < rhs.rawValue
        }
    }
}

// CustomStringConvertible

extension Rank: CustomStringConvertible {
    public var description: String {
        switch self {
        case .ace: return "A"
        case .jack: return "J"
        case .queen: return "Q"
        case .king: return "K"
        default:
            return "\(rawValue)"
        }
    }
}
