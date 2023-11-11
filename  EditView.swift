
import SwiftUI

struct EditView: View {
    var body: some View {
        let array = ["","","",""]
        List {
            ForEach(array, id: \.self) { array in
                Text(array)
                
            }
        }
    }
}

#Preview {
    EditView()
}
