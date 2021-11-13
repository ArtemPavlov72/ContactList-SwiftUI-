//
//  ContactsInfo.swift
//  ContactList (SwiftUI)
//
//  Created by Pavlov Artem on 13.11.2021.
//

import SwiftUI

struct ContactsInfo: View {
    let personInfo = Person.getContactList()
    
    var body: some View {
        NavigationView {
            List() {
                ForEach(personInfo) { person in
                    Section(header: Text("\(person.fullName)")) {
                        HStack{
                            Image(systemName: "phone")
                            Text("\(person.numberPhone)")
                        }
                        HStack{
                            Image(systemName: "tray")
                            Text("\(person.email)")
                        }
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact Info")
        }
        
    }
}

struct ContactsInfo_Previews: PreviewProvider {
    static var previews: some View {
        ContactsInfo()
    }
}
