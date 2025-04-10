//
//  ContentView.swift
//  Fintech
//
//  Created by Omer Gulzar Ch on 1/7/25.
//

import SwiftUI
import Resolver

struct ContentView: View {
    
    @Injected var userRepo: UserRepo
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        .task {
            do {
                try await userRepo.fetchUser()
            } catch {
                
            }
            
        }
    }
}
