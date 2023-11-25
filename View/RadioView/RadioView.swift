import SwiftUI

struct RadioView: View {
    var body: some View {
        NavigationView {
          ScrollView (.vertical, showsIndicators: false) {
                VStack {
                    LazyHGridView()
                    LazyVGridView()
                }
                .navigationTitle("Радио")
                
            }
          //.padding(.leading, -5)
        }
    }
}

#Preview {
    RadioView()
}
