
import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            
            LibraryView()
                .tabItem {
                    Image(systemName: "music.note.house.fill")
                    Text("Медиатека")
                        .foregroundColor(Color.gray)
                }
            
            Text("")
                .tabItem {
                    Image(systemName: "dot.radiowaves.left.and.right")
                    Text("Радио")
                        .foregroundColor(Color.gray)
                }
            
            Text("")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Поиск")
                        .foregroundColor(Color.gray)
                }
        }
        
      .accentColor(.red)
    }
}

#Preview {
    ContentView()
}
