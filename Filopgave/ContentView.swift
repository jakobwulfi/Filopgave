//
//  ContentView.swift
//  Filopgave
//
//  Created by dmu mac 31 on 23/10/2024.
//

import SwiftUI



struct ContentView: View {
    @Environment(StateController.self) var stateController: StateController
    var body: some View {
        let users = stateController.persons
        VStack {
                    if let firstUser = users.first {  // Safely access the first user
                        Text("\(firstUser.name.title) \(firstUser.name.first) \(firstUser.name.last)")
                    } else {
                        Text("No user data available")
                    }
                }
                .padding()
    }
}

#Preview {
    ContentView().environment(StateController())
}
