//
//  ContactRow.swift
//  ContactList (SwiftUI)
//
//  Created by iMac on 13.11.2021.
//

import SwiftUI

struct ContactRow: View {
    @State private var isPresented = false
    
    let contact: Person
    
    var body: some View {
        Button(action: {isPresented.toggle()}) {
            Text("\(contact.fullName)")
                .frame(alignment: .leading)
            Spacer()
        }
    }
}

struct ContactRow_Previews: PreviewProvider {
    static var previews: some View {
        ContactRow(contact: Person.getContact())
    }
}
