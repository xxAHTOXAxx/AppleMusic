
import SwiftUI

struct LibraryView: View {
    
    var view: Bool = true
    
    var body: some View {
        NavigationView {
            TabView {
                ScrollView {
                    VStack {
                        Spacer()
                        Text("Ищете свою музыку?")
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                        Text("Здесь появиться купленная Вами в \n iTunes Store музыка")
                            .foregroundColor(Color.gray)
                            .multilineTextAlignment(.center)
                        Spacer()
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                }
                
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
            .navigationTitle("Медиатека")
            .navigationBarItems(trailing:
                                    NavigationLink(destination: EditView()) {
                Text("Править")
                    .foregroundColor(Color.red)
            }
            )
        }
    }
}

#Preview {
    LibraryView()
}
