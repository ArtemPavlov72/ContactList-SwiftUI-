//
//  ContactsInfo.swift
//  ContactList (SwiftUI)
//
//  Created by Pavlov Artem on 13.11.2021.
//

import SwiftUI

struct ContactsInfo: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) { person in
                Section(header: Text(person.fullName)) {
                    Label(person.numberPhone, systemImage: "phone")
                    Label(person.email, systemImage: "tray")
                    }
                .textCase(.none)
                }
            .listStyle(.plain)
            .navigationTitle("Contact Info")
        }
    }
}

struct ContactsInfo_Previews: PreviewProvider {
    static var previews: some View {
        ContactsInfo(persons: Person.getContactList())
    }
}
