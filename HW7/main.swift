//
//  main.swift
//  HW7
//
//  Created by Jarae on 3/2/23.
//

import Foundation

//Создать класс Client c параметрами firstname, lastname. Cоздать класс Card c параметрами bankName, cardNumber и bill. Добавить в класс Client еще один параметр cards: [Card]. Cоздать класс Bank, в котором имеется функция перевода или оплаты денег. Функция должна запрашивать "Выберите карту", создается поле для ввода номера карты, после чего она должна распознать имя банка и запринтить в консоль. Затем запрашивается номер счета другого Сlient, вы вводите номер карты, в консоль должна отобразиться ФИО клиента. После чего запрашивается сумма и происходит перевод денег. Где сумма денег пробовать вводить неверные данные. В main cоздать объекты, заполнить данными и произвести перевод.
//Создать extension для класса Bank и добавить еще 2 функции перевода денег, но с разными вариантами работы с опциональностью.
//Чтобы произвести перевод вы в readline вводите String, cчет хранится в числах, соответственно нужно вводимую сумму переводить в число. Использовать в одной функции ??, в другой проверку на nil через if конструктор. Выводить нужные сообщения пользователю.



var bank = Bank()

var client1 = Client(firstName: "Mirlan", lastName: "Usenkanov", cards: [Card(bankName: "Demir", cardNumber: 9417111122223333, bill: 1000), Card(bankName: "KICB", cardNumber: 4446732000197659, bill: 130000)])
var client2 = Client(firstName: "Bermet", lastName: "Tariel", cards: [Card(bankName: "Kyrgyzstan", cardNumber: 0000111122223333, bill: 2000)])
var client3 = Client(firstName: "Elina", lastName: "Dzhorobekova", cards: [Card(bankName: "РСК", cardNumber: 5555666677778888, bill: 100)])


bank.clients.append(client1)
bank.clients.append(client2)
bank.clients.append(client3)

bank.moneyTransfer()

//extension Bank {
//    /*static*/ func transferMoney(fromClient: Client, toClient: Client) {
//        print("Выберите Банк:")
//        for (index, item) in fromClient.cards.enumerated() {
//            print("\(index + 1) \(item.bankName)")
//        }
//
//        let readline = Int(readLine()!)!
//        let selectedCard = fromClient.cards[readline]
//        print("Выберите: \(selectedCard.bankName)")
//
//        print("укажите номер карты")
//        let toCardNumberTransfer = readLine()!
//    }
//
//}
//
//bank.transferMoney(fromClient: client1, toClient: client3)



