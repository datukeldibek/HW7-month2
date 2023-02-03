//
//  Card.swift
//  HW7
//
//  Created by Jarae on 3/2/23.
//

import Foundation
class Card {
    var bankName: String
    var cardNumber: Int
    var bill: Double
    
    init(bankName: String, cardNumber: Int, bill: Double) {
        self.bankName = bankName
        self.cardNumber = cardNumber
        self.bill = bill
    }
}
