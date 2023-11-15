
import SwiftUI

struct EditView: View {

    var array = ["Плейлисты","Артисты","Альбомы","Песни", "Телешоу и фильмы", "Видеоклипы", "Жанры", "Сборники", "Авторы", "Загружено", "Домашняя коллекция"]
    
    var body: some View {
      
        NavigationView {
            ScrollView {
                
                List {
                    ForEach(array, id: \.self) { item in
                        Text(item)
                    }
                }
            }
            .navigationTitle("Медиатека")
            .navigationBarItems(trailing:
                                    NavigationLink(destination: LibraryView()) {
                Text("Готово")
                    .foregroundColor(Color.red)
            }
            )
        }
    }
}
                                
#Preview {
    EditView()
}
