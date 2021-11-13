//
//  ContactsList.swift
//  ContactList (SwiftUI)
//
//  Created by Pavlov Artem on 13.11.2021.
//

import SwiftUI

struct ContactsList: View {
    let personInfo = Person.getContactList()
    
    var body: some View {
        NavigationView {
            List(personInfo) {person in
                NavigationLink(destination: PersonInformation(contact: person)) {
                    ContactRow(contact: person)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct ContactsList_Previews: PreviewProvider {
    static var previews: some View {
        ContactsList()
    }
}
