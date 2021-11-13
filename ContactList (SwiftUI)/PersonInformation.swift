//
//  PersonInformation.swift
//  ContactList (SwiftUI)
//
//  Created by iMac on 13.11.2021.
//

import SwiftUI

struct PersonInformation: View {
    let contact: Person
    
    var body: some View {
        VStack {
            Image(systemName: "person.circle")
                .resizable()
                .frame(width: 230, height: 230)
            HStack{
                Image(systemName: "phone")
                    .resizable()
                    .frame(width: 30, height: 30)
                Text("\(contact.numberPhone)")
                    .font(.title)
                Spacer()
            }
            HStack{
                Image(systemName: "tray")
                    .resizable()
                    .frame(width: 30, height: 30)
                Text("\(contact.email)")
                    .font(.title)
                Spacer()
            }
            Spacer()
        }
        .padding()
        .navigationTitle("\(contact.fullName)")
    }
}

struct PersonInformation_Previews: PreviewProvider {
    static var previews: some View {
        PersonInformation(contact: Person.getContact())
    }
}
