import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: .bottom) {
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
            .onAppear () {
                UITabBar.appearance().backgroundColor = .systemGray6
                UITabBar.appearance().barTintColor = .systemGray6
            }
        PlayerView()
                .padding(.bottom, 60)
        }
    }
}
#Preview {
    ContentView()
}
