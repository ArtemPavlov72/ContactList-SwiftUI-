//
//  ContentView.swift
//  ContactList (SwiftUI)
//
//  Created by Pavlov Artem on 12.11.2021.
//

import SwiftUI

struct ContentView: View {
    private let personsList = Person.getContactList()
    
    var body: some View {
        TabView {
            ContactsList(persons: personsList)
                .tabItem {
                    Image(systemName: "person.circle.fill")
                    Text("Contact List")
                }
            ContactsInfo(persons: personsList)
                .tabItem {
                    Image(systemName: "person.crop.square.fill.and.at.rectangle")
                    Text("Contact Info")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
