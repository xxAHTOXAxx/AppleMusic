
import SwiftUI

struct PlayerView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .foregroundColor(Color(UIColor.systemGray5))
                .frame(height: 50)
                .padding(.horizontal, 20)
            
            HStack {
                
                Text("Не исполняется")
                
                Button(action: {
                    // Действие при нажатии кнопки Play
                }) {
                    Image(systemName: "play.fill")
                        .foregroundColor(.black)
                        //.padding()
                        .imageScale(.large)
                }
                .padding(.leading, 50)
                
                Button(action: {
                    // Действие при нажатии кнопки Next
                }) {
                    Image(systemName: "forward.fill")
                        .foregroundColor(.black)
                        //.padding()
                        .imageScale(.large)
                }
                .padding(.leading, 30)
            }
            .padding(.leading, 20)
        }
    }
}

struct Player_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
