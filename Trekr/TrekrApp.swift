//
//  TrekrApp.swift
//  Trekr
//
//  Created by Eduardo Santos on 21/05/21.
//

import SwiftUI

@main
struct TrekrApp: App {
    @StateObject var locations = Locations()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    ContentView(location: locations.primary)
                }
                .tabItem {
                    Label("Discover", systemImage: "airplane.circle.fill")
                }
                
                NavigationView {
                    WorldView()
                }
                .tabItem {
                    Label("Locations", systemImage: "star.fill")
                    
                }
                NavigationView {
                    TipsView()
                }
                .tabItem {
                    Label("Tips", systemImage: "list.bullet")
                    
                }
            }
            .environmentObject(locations)
        }
    }
}
