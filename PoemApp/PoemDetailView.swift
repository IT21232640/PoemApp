import SwiftUI

struct PoemDetailView: View {
    let poem: Poem
    
    var body: some View {
        VStack {
            Text(poem.title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top)
                .foregroundColor(.white)
            
            Text("- \(poem.author)")
                .font(.title2)
                .padding()
                .foregroundColor(.white)
            
            Text(poem.content)
                .font(.body)
                .padding()
                .foregroundColor(.white)
            
            Text(poem.details)
                .font(.subheadline)
                .padding()
                .foregroundColor(.white)
            
            Spacer()
        }
        .padding()
        .background(
            LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]),
                           startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
        )
        .navigationTitle("Poem Details")    }
}
