//
//  Person.swift
//  FaceFacts
//
//  Created by Vefa Kosova on 6.03.2024.
//

import Foundation
import SwiftData

@Model
class Person {
    var name: String
    var emailAddress: String
    var details: String
    
    init(name: String, emailAddress: String, details: String) {
        self.name = name
        self.emailAddress = emailAddress
        self.details = details
    }
}
