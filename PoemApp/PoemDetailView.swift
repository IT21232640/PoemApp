import SwiftUI

struct PoemDetailView: View {
    let poem: Poem
    
    var body: some View {
        VStack {
            Text(poem.title)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            
            Text("- \(poem.author)")
                .font(.title2)
                .padding()
            
            Text(poem.content)
                .font(.body)
                .padding()
            
            Text(poem.details)
                .font(.subheadline)
                .padding()
            
            Spacer()
        }
        .navigationTitle("Poem Details")
        .background(Color.black.edgesIgnoringSafeArea(.all))
    }
}
