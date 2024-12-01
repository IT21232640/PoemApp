import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            TabView {
                MotivationPoemView()
                    .tabItem {
                        Label("Motivation", systemImage: "star.fill")
                            .font(.headline)
                    }
                    .tag(0)
                
                LovePoemView()
                    .tabItem {
                        Label("Love", systemImage: "heart.fill")
                            .font(.headline)
                    }
                    .tag(1)
                
                SadPoemView()
                    .tabItem {
                        Label("Sad", systemImage: "cloud.fill")
                            .font(.headline)
                    }
                    .tag(2)
            }
            .accentColor(.white) // TabBar accent color
            .background(
                LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]),
                               startPoint: .topLeading, endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all)
            )
        }
    }
}
