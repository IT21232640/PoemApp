import SwiftUI

struct LovePoemView: View {
    let poems = PoemData.lovePoems
    
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
        .navigationTitle("Love Poems")
        .background(Color.red.edgesIgnoringSafeArea(.all))
    }
}
