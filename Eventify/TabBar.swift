//
//  TabBar.swift
//  Eventify
//
//  Created by Rania on 12/06/1445 AH.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            ExploreView()
                .tabItem {
                    Image(systemName: "globe.americas")
                    Text("Explore")
                }
            EventsView()
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Events")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
        .accentColor(Color("Light"))
    }
}

#Preview {
    ContentView()
}
