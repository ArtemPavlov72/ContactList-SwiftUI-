//
//  Person.swift
//  ContactList (SwiftUI)
//
//  Created by Pavlov Artem on 12.11.2021.
//

import SwiftUI

struct Person: Identifiable {
    var id: Int
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
        
        
        let iterationCount = min(
            names.count,
            secondsNames.count,
            phoneNumbers.count,
            emails.count
        )
        
        for index in 0..<iterationCount {
            var idPerson = 0
            let person = Person(
                id: idPerson + 1,
                name: names[index],
                secondName: secondsNames[index],
                numberPhone: phoneNumbers[index],
                email: emails[index]
            )
            idPerson += 1
            persons.append(person)
        }
     return persons
    }
}
/*
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
    
    static func getContactList() -> [Person] {
        var persons: [Person] = []
        for _ in 1...16 {
            let person: Person = getContact()
            persons.append(person)
        }
        return persons
    }
}
 */

