//
//  StateController.swift
//  Filopgave
//
//  Created by dmu mac 31 on 23/10/2024.
//


import SwiftUI

@Observable
class StateController {
    var persons: [Person] = []
    
    init() {
        loadJSONData()
    }
    
    func loadJSONData() {
            // Use optional binding to safely unwrap URL
            if let url = Bundle.main.url(forResource: "JSONFil", withExtension: "json") {
                do {
                    // Load data from the URL
                    let data = try Data(contentsOf: url)
                    
                    // Initialize JSONDecoder
                    let decoder = JSONDecoder()
                    
                    // Try to decode the JSON data into a Result object
                    let result = try decoder.decode(Result.self, from: data)
                                    
                    // Assign the decoded persons to the person array
                    persons = result.result
                } catch {
                    // Handle any errors during data loading or decoding
                    print("Error loading or decoding JSON: \(error)")
                }
            } else {
                print("Error: JSON file not found")
            }
        }
    
}
