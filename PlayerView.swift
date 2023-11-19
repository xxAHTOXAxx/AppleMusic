import SwiftUI

struct PlayerView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .foregroundColor(Color(UIColor.systemGray5))
                .frame(height: 50)
                .padding(.horizontal, 20)
            
            HStack {
//                ZStack {
//                    RoundedRectangle(cornerRadius: 10)
//                        .foregroundColor(Color(UIColor.systemGray4))
//                        .frame(width: 40, height: 40) // Изменяем размеры для квадрата
//                        .padding(.trailing, 10) // Уменьшение отступа
//                        .offset(x: -25)
//                    
//                }
                //Image(systemName: "play.fill")
                //Image("notExecuted")
//                    .resizable()
//                    .aspectRatio(contentMode: .fit)
//                    .frame(width: 40, height: 40)
                
                Text("Не исполняется")
                
                Button(action: {
                   
                }) {
                    Image(systemName: "play.fill")
                        .foregroundColor(.black)
                        .imageScale(.large)
                }
                .padding(.leading, 10) // Уменьшение отступа
                .padding(.trailing, 10) // Уменьшение отступа
                
                Button(action: {
                    
                }) {
                    Image(systemName: "forward.fill")
                        .foregroundColor(.black)
                        .imageScale(.large)
                }
                .padding(.trailing, -10)
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
