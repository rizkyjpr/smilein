import SwiftUI

struct InfoFour: View {
    var body: some View{
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack(spacing: 24) {
                
                Spacer(minLength: 130)
                
                GifImage("inspire")
                    .frame(width: 200, height: 200)
                    .padding(.bottom,10)
                
                Text("Smile inspires other")
                    .font(.system(
                        size: 20,
                        weight: .medium,
                        design: .monospaced))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: 400)
                
                Text("and so many more!")
                    .font(.system(
                        size: 16,
                        weight: .medium,
                        design: .monospaced))
                    .foregroundColor(Color.theButton)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: 200)
                
                GeometryReader { geometry in
                    Image("Group 2")
                        .position(x: (geometry.size.width/2)-40, y: (geometry.size.height)-60)
                }
                
                
                HStack(spacing: 20){
                    NavigationLink(destination: SmileOne()){
                        Image("greySmile1")
                    }
                    
                    Image("orangeInfo1")
                    
                }.padding(.bottom,61)
                
            }
        }.navigationBarHidden(true)
    }
}

