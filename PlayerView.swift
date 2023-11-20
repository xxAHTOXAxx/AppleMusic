import SwiftUI

struct PlayerView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .foregroundColor(Color(UIColor.systemGray5))
                .frame(height: 50)
                .padding(.horizontal, 20)
            
            HStack {
                Image("notExecuted")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .padding(.trailing, 10)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .offset(x: -30)
                    .colorMultiply(Color(UIColor.systemGray4))
                
                Text("Не исполняется")
                    .offset(x: -30)
                
                Button(action: {
                   
                }) {
                    Image(systemName: "play.fill")
                        .foregroundColor(.black)
                        .imageScale(.large)
                }
                .padding(.leading, 10)
                .padding(.trailing, 10)
                
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
