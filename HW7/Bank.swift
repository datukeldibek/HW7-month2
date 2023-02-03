//
//  Bank.swift
//  HW7
//
//  Created by Jarae on 3/2/23.
//

import Foundation
class Bank {
    var clients: [Client] = []
    
    func moneyTransfer() {
        print("Выберите карту:", terminator: " ")
        var fromCardNum: Int?
        fromCardNum = Int(readLine()!)
        
        print("номер счета другого Сlient:", terminator: " ")
        var toCardNum: Int?
        toCardNum = Int(readLine() ?? "")
        
        print("сумма перевода:", terminator: " ")
        var sum: Int?
        sum = Int(readLine()!)
        sum == nil ? print("nil") : print("not nil")
        
        for client in clients {
            for card in client.cards {
                if card.cardNumber == fromCardNum!{
                    print("\(fromCardNum!) карта банка \(card.bankName)")
                    if card.bill < Double(sum!){
                        print("недостаточно средств")
                    }else{
                        card.bill -= Double(sum!)
                    }
                }
                if card.cardNumber == toCardNum! {
                    print("\(toCardNum!) карта пользователя \(client.firstName) \(client.lastName)")
                    card.bill += Double(sum!)
                }
            }
        }
    }
}
