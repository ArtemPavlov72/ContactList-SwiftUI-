//
//  PersonInformation.swift
//  ContactList (SwiftUI)
//
//  Created by Pavlov Artem on 13.11.2021.
//

import SwiftUI

struct PersonInformation: View {
    
    let contact: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.circle")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .padding()
                Spacer()
            }
            Label(contact.numberPhone, systemImage: "phone") // лэйбл совмещает в себе изображение и текст
            Label(contact.email, systemImage: "tray")
        }
        .navigationTitle("\(contact.fullName)")
    }
}

struct PersonInformation_Previews: PreviewProvider {
    static var previews: some View {
        PersonInformation(contact: Person.getContactList().first!)
    }
}
