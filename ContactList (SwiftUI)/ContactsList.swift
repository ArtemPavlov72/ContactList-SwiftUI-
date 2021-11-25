//
//  ContactsList.swift
//  ContactList (SwiftUI)
//
//  Created by Pavlov Artem on 13.11.2021.
//

import SwiftUI

struct ContactsList: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) {person in //делаем табличку, куда передаем массив
                NavigationLink(
                    person.fullName,
                    destination: PersonInformation(contact: person)
                )
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct ContactsList_Previews: PreviewProvider {
    static var previews: some View {
        ContactsList(persons: Person.getContactList())
    }
}
