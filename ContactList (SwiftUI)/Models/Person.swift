//
//  Person.swift
//  ContactList (SwiftUI)
//
//  Created by Pavlov Artem on 12.11.2021.
//

import Foundation

struct Person {
    let name: String
    let secondName: String
    let numberPhone: String
    let email: String
    
    var fullName: String {
        "\(name) \(secondName)"
    }
}

extension Person {
    static func getContactList() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DataManager.shared.realNames.shuffled()
        let secondsNames = DataManager.shared.realSecondNames.shuffled()
        let phoneNumbers = DataManager.shared.realNumbersPhones.shuffled()
        let emails = DataManager.shared.realEmails.shuffled()
        
        for index in 0..<names.count {
            let person = Person(
                name: names[index],
                secondName: secondsNames[index],
                numberPhone: phoneNumbers[index],
                email: emails[index]
            )
            persons.append(person)
        }
        return persons
    }
}

enum Contacts: String {
    case phone = "phone" //название кнопочек, которые используем на втором экране
    case email = "tray" //название кнопочек
}
