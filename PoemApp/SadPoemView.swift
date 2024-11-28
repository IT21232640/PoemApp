import SwiftUI

struct SadPoemView: View {
    let poems = PoemData.sadPoems
    
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
        .navigationTitle("Sad Poems")
        .background(Color.gray.edgesIgnoringSafeArea(.all))
    }
}
