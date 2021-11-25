//
//  Person.swift
//  ContactList (SwiftUI)
//
//  Created by Pavlov Artem on 12.11.2021.
//

import SwiftUI

struct Person: Identifiable {
    let id: Int
    let name: String
    let secondName: String
    let numberPhone: String
    let email: String
    
    var fullName: String {
        "\(name) \(secondName)"
    }
    
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
            let person = Person(
                id: index + 1,
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


