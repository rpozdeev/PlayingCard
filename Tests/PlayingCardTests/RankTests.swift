//
//  File.swift
//  
//
//  Created by Roman I Pozdeev on 04.08.2021.
//

@testable import PlayingCard
import XCTest

class RankTests: XCTestCase {
    
    func testRankStringEquality() {
        let numbers = [2,3,4,5,6,7,8,9,10]
        let suits = numbers.map{Rank(rawValue:$0)}.flatMap{$0}.map{Int(String(describing: $0)) ?? 0}
        
        XCTAssertEqual(String(describing: Rank.ace), "A")
        XCTAssertEqual(String(describing: Rank.jack), "J")
        XCTAssertEqual(String(describing: Rank.queen), "Q")
        XCTAssertEqual(String(describing: Rank.king), "K")
        XCTAssertEqual(numbers, suits)
    }
    
    func testRankComparable() {
        XCTAssertGreaterThan(Rank.ace, Rank.two)
        XCTAssertGreaterThan(Rank.ace, Rank.king)
        XCTAssertGreaterThan(Rank.king, Rank.queen)
        XCTAssertGreaterThan(Rank.queen, Rank.jack)
        XCTAssertGreaterThan(Rank.jack, Rank.ten)
    }
    
    static var allTests = [
        ("testRankStringEquality", testRankStringEquality),
        ("testRankComparable", testRankComparable),
    ]
}
