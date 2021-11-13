//
//  ContentView.swift
//  ContactList (SwiftUI)
//
//  Created by Pavlov Artem on 12.11.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ContactsList()
                .tabItem {
                    Image(systemName: "person.circle.fill")
                    Text("Contact List")
                }
            ContactsInfo()
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
