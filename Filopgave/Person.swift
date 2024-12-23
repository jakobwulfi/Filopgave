//
//  Person.swift
//  Filopgave
//
//  Created by dmu mac 31 on 23/10/2024.
//

import Foundation


// MARK: - Person
struct Person: Codable {
    let gender: String
    let name: Name
    let location: Location
}

// MARK: - Location
struct Location: Codable {
    let street: Street
}

// MARK: - Street
struct Street: Codable {
    let number: Int
    let name: String
}

// MARK: - Name
struct Name: Codable {
    let title, first, last: String
}

struct Result: Decodable {
    let result: [Person]
}
