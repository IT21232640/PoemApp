import SwiftUI

struct LovePoemView: View {
    let poems = PoemData.lovePoems
    
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
                        .foregroundColor(.red)
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
        .navigationTitle("Love Poems")
        .background(Color.red.opacity(0.1).edgesIgnoringSafeArea(.all))
    }
}
