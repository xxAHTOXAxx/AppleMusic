
import SwiftUI

struct EditView: View {
    @Environment(\.presentationMode) var presentationMode
    private var isSelected: Bool
    
    init(isSelected: Bool) {
        self.isSelected = isSelected
    }
    
    @State var arrayNames = ["Плейлисты", "Артисты", "Альбомы", "Песни", "Телешоу и фильмы", "Видеоклипы", "Жанры", "Сборники", "Авторы", "Загружено", "Домашняя коллекция"]
    
    @State var arrayImage = ["music.note.list", "music.mic", "square.stack", "music.note", "tv", "music.note.tv", "guitars", "person.2.crop.square.stack", "music.quarternote.3", "arrow.down.circle", "music.note.house"]
    
    @ViewBuilder var body: some View {
        NavigationView {
            List {
                ForEach(Array(zip(arrayNames, arrayImage)), id: \.0) { name, imageName in
                    HStack {
                        if isSelected {
                            Image(systemName: "checkmark.circle.fill")
                                .foregroundColor(.red)
                                .imageScale(.large)
                        } else {
                            Image(systemName: "circle")
                                .foregroundColor(Color(UIColor.systemGray5))
                                .imageScale(.large)
                        }
                        Image(systemName: imageName)
                            .foregroundColor(Color.red)
                            .padding(.trailing, 8)
                        Text(name)
                    }
                }
            }
            
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
