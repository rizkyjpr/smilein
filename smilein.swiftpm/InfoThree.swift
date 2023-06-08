import SwiftUI

struct InfoThree: View {
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack(spacing: 24) {
                Spacer(minLength: 128)
                
                GifImage("trust")
                    .frame(width: 200, height: 200)
                    .padding(.bottom,10)
                
                Text("Smile increases trust from other")
                    .font(.system(
                        size: 20,
                        weight: .medium,
                        design: .monospaced))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: 300)
                    .padding(.bottom,48)
                
                ButtonSubView()
                
                HStack(spacing: 20){
                    NavigationLink(destination: SmileOne()){
                        Image("greySmile1")
                    }
                    Image("orangeInfo1")
                }.padding(.top,89)
                
                Spacer()
                
            }
        }.navigationBarHidden(true)
            .navigationViewStyle(.stack)
    }
    
    struct ButtonSubView: View {
        var body: some View{
            NavigationLink(destination: InfoFour()){
                Text("Next")
                    .fontWeight(.bold)
                    .font(.system(size: 20))
            }
            .padding(.all)
            .frame(width: 230)
            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
            .background(Color.theButton)
            .cornerRadius(10)
            
        }
    }
}

