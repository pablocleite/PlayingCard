//
//  PayingCardDeck.swift
//  PlayingCard
//
//  Created by Pablo Leite on 01/07/2018.
//  Copyright © 2018 Pablo Cobucci Leite. All rights reserved.
//

import Foundation

struct PlayingCardDeck {
    private(set) var cards = [PlayingCard]()
    
    init() {
        for suit in PlayingCard.Suit.all {
            for rank in PlayingCard.Rank.all {
                cards.append(PlayingCard(suit: suit, rank: rank))
            }
        }
    }
    
    mutating func draw() -> PlayingCard? {
        guard (!cards.isEmpty) else {
            return nil
        }
        return cards.remove(at: Int(arc4random_uniform(UInt32(cards.count))))
    }
}
