import SwiftUI

struct EditView: View {
    @Environment(\.presentationMode) var presentationMode
    @State private var isSelected: Bool
    @State private var items = ModelItems.arrayItems
    
    init(isSelected: Bool) {
            _isSelected = State(initialValue: isSelected)
        }
    
    func move(from source: IndexSet, to destination: Int) {
        items.move(fromOffsets: source, toOffset: destination)
    }
    
    @ViewBuilder var body: some View {
        NavigationView {
            List {
                ForEach(items, id: \.self) { item in
                    HStack {
                        Button(action: {
                          isSelected.toggle()
                        }, label: {
                            if isSelected {
                                Image(systemName: "checkmark.circle.fill")
                                    .foregroundColor(.red)
                                    .imageScale(.large)
                            } else {
                                Image(systemName: "circle")
                                    .foregroundColor(Color(UIColor.systemGray5))
                                    .imageScale(.large)
                            }
                        })
                        
                        Image(systemName: item.itemImage)
                            .foregroundColor(Color.red)
                            .padding(.trailing, 8)
                        Text(item.name)
                    }
                }
                .onMove(perform: move)
            }
            .navigationBarBackButtonHidden()
            .navigationTitle("Медиатека")
            .navigationBarItems(trailing:
                                    Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }) {
                Text("Готово")
                    .foregroundColor(Color.red)
            }
            )
        }
    }
}

#Preview {
    EditView(isSelected: false)
}
