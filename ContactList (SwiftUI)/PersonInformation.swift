//
//  PersonInformation.swift
//  ContactList (SwiftUI)
//
//  Created by iMac on 13.11.2021.
//

import SwiftUI

struct PersonInformation: View {
    let person: Person
    
    var body: some View {
        VStack {
            HStack {
                Text("\(person.fullName)")
                    .font(.largeTitle.bold())
                Spacer()
            }
            Image(systemName: "person.circle")
                .resizable()
                .frame(width: 230, height: 230)
            HStack{
                Image(systemName: "phone")
                    .resizable()
                    .frame(width: 30, height: 30)
                Text("\(person.numberPhone)")
                    .font(.title)
                Spacer()
            }
            HStack{
                Image(systemName: "tray")
                    .resizable()
                    .frame(width: 30, height: 30)
                Text("\(person.email)")
                    .font(.title)
                Spacer()
            }
            Spacer()
        }
    }
}

struct PersonInformation_Previews: PreviewProvider {
    static var previews: some View {
        PersonInformation(person: Person.getContact())
    }
}
