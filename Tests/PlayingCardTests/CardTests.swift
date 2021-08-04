//
//  File.swift
//  
//
//  Created by Roman I Pozdeev on 04.08.2021.
//

@testable import PlayingCard
import XCTest

class CardTests: XCTestCase {
    
    func testCardSingle() {
        let card1 = PlayingCard(rank: .queen, suit: .diamonds)
        let card2 = PlayingCard(rank: .king, suit: .diamonds)
        let card3 = PlayingCard(rank: .ace, suit: .clubs)
        let card4 = PlayingCard(rank: .queen, suit: .diamonds)
        let card5 = PlayingCard(rank: .queen, suit: .clubs)

        XCTAssertGreaterThan(card2, card1)
        XCTAssertGreaterThan(card3, card2)
        XCTAssertEqual(card1, card4)
        XCTAssertGreaterThan(card4, card5)
    }
    
    func testCardStringEquality() {
        let card1 = PlayingCard(rank: .jack, suit: .clubs)
        let card2 = PlayingCard(rank: .two, suit: .hearts)
        let card3 = PlayingCard(rank: .queen, suit: .diamonds)
        
        XCTAssertEqual(String(describing: card1), "♣︎ J")
        XCTAssertEqual(String(describing: card2), "♡ 2")
        XCTAssertEqual(String(describing: card3), "♢ Q")
    }
    
    static var allTests = [
        ("testCardSingle", testCardSingle),
        ("testCardStringEquality", testCardStringEquality)
    ]
}
