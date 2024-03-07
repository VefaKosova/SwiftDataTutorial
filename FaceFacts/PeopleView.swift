//
//  PersonView.swift
//  FaceFacts
//
//  Created by Vefa Kosova on 6.03.2024.
//

import SwiftUI
import SwiftData

struct PeopleView: View {
    @Environment(\.modelContext) var modelContext
    @Query var people: [Person]
    
    var body: some View {
        List {
            ForEach(people) { person in
                NavigationLink(value: person) {
                    Text(person.name)
                }
            }
            .onDelete(perform: deletePeople)
        }
    }
    
    init(searchString: String = "") {
        _people = Query(filter: #Predicate { person
            in
            true
        })
    }
    
    func deletePeople(at offsets: IndexSet) {
//        try? modelContext.delete(model: Person.self) to delete all
        
        for offset in offsets {
            let person = people[offset]
            modelContext.delete(person)
        }
    }
}

#Preview {
    PeopleView()
}
