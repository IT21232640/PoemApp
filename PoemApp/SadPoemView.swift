import SwiftUI

struct SadPoemView: View {
    let poems = PoemData.sadPoems
    
    var body: some View {
        List(poems) { poem in
            NavigationLink(destination: PoemDetailView(poem: poem)) {
                HStack {
                    Text(poem.title)
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .lineLimit(1)
                    Spacer()
                    Text(poem.emoji)
                        .font(.title)
                        .foregroundColor(.gray)
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.white.opacity(0.7))
                        .shadow(radius: 5)
                )
                .padding(.horizontal)
            }
        }
        .navigationTitle("Sad Poems")
        .background(Color.gray.opacity(0.1).edgesIgnoringSafeArea(.all))
    }
}
