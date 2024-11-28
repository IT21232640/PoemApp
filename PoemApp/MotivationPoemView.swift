import SwiftUI

struct MotivationPoemView: View {
    let poems = PoemData.motivationPoems
    
    var body: some View {
        List(poems) { poem in
            NavigationLink(destination: PoemDetailView(poem: poem)) {
                HStack {
                    Text(poem.title)
                        .font(.title2)
                        .foregroundColor(.black)
                    Spacer()
                    Text(poem.emoji)
                        .font(.title)
                }
                .padding()
            }
        }
        .navigationTitle("Motivation Poems")
        .background(Color.blue.edgesIgnoringSafeArea(.all))
    }
}
