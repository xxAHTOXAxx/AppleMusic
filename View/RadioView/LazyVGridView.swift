import SwiftUI

struct LazyVGridView: View {
    let columns = [(GridItem(.fixed(375)))]
    @State private var items = ModelItemsForRadioView.itemsArray
    let title: String = "Станции"
    var body: some View {
        VStack(alignment: .leading) {
                    Text(title)
                        .font(.title)
                        .fontWeight(.bold)
                        .padding(.leading, -10)
            //ScrollView(.vertical, showsIndicators: false) {
              // LazyVGrid(columns: columns, spacing: 6) {
                    ForEach (items, id: \.self) { item in
                        HStack(spacing: 6) {
                            Image(item.itemImage)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 100, height: 100)
                                .cornerRadius(2)
                            
                            VStack(alignment: .leading, spacing: 4) {
                                Text(item.genreOfMusic)
                                    .font(.subheadline)
                                    .foregroundColor(.gray)
                                    .font(.headline)
                                
                                Text(item.nameMusic)
                                    .font(.subheadline)
                            }
                        }
                        .padding(1)
                        .background(Color.white)
                        .padding(.leading, -20)
                        //.padding(.horizontal, 10)
                    }
                }
            }
        }
   //}
//}

#Preview {
    LazyVGridView()
}
