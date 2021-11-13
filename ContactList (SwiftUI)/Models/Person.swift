//
//  Person.swift
//  ContactList (SwiftUI)
//
//  Created by Pavlov Artem on 12.11.2021.
//

import SwiftUI

class Person: NSObject {
    let name: String
    let secondName: String
    let numberPhone: String
    let email: String
    let fullName: String
    
    init(name: String, secondName: String, numberPhone: String, email: String, fullName: String) {
        self.name = name
        self.secondName = secondName
        self.numberPhone = numberPhone
        self.email = email
        self.fullName = fullName
    }
}

extension Person {
    static func getContact() -> Person {
        
        let names = DataManager.shared.realNames.shuffled()
        let secondsNames = DataManager.shared.realSecondNames.shuffled()
        let phoneNumbers = DataManager.shared.realNumbersPhones.shuffled()
        let emails = DataManager.shared.realEmails.shuffled()
        
        let name = names[Int.random(in: 0..<names.count)]
        let secondName = secondsNames[Int.random(in: 0..<secondsNames.count)]
        let phoneNumber = phoneNumbers[Int.random(in: 0..<phoneNumbers.count)]
        let email = emails[Int.random(in: 0..<emails.count)]
        let fullName = "\(name) \(secondName)"

        let newPerson = Person(name: name, secondName: secondName, numberPhone: phoneNumber, email: email, fullName: fullName)
        
        return newPerson
    }
}

enum Contacts: String {
    case phone = "phone" //название кнопочек, которые используем на втором экране
    case email = "tray" //название кнопочек
}
