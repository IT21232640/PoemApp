import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            TabView {
                MotivationPoemView()
                    .tabItem {
                        Label("Motivation", systemImage: "star.fill")
                    }
                
                LovePoemView()
                    .tabItem {
                        Label("Love", systemImage: "heart.fill")
                    }
                
                SadPoemView()
                    .tabItem {
                        Label("Sad", systemImage: "cloud.fill")
                    }
            }
        }
    }
}

