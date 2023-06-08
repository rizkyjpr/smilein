import SwiftUI

struct SmileThree: View {
    var body: some View{
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack(spacing: 24) {
                
                Spacer(minLength: 130)
                
                GifImage("congrats")
                    .frame(width: 200, height: 200)
                    .padding(.bottom,10)
                
                Text("Congratulation in smiling!")
                    .font(.system(
                        size: 20,
                        weight: .medium,
                        design: .monospaced))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: 400)
                
                Text("but why are we need to smile?")
                    .font(.system(
                        size: 16,
                        weight: .medium,
                        design: .monospaced))
                    .foregroundColor(Color.theButton)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: 200)
                
                GeometryReader { geometry in
                    Image("Group 6")
                        .position(x: (geometry.size.width/2)+60, y: (geometry.size.height)-40)
                }
                
                
                HStack(spacing: 20){
                    Image("orangeSmile1")
                    
                    NavigationLink(destination: InfoOne()){
                        Image("greyInfo1")
                    }
                }.padding(.bottom,61)
                
            }
        }.navigationBarHidden(true)
    }
}

