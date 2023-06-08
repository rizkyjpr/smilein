import SwiftUI

struct SmileOne: View {
    var body: some View {
        NavigationView{
            ZStack{
                Image("background")
                    .resizable()
                    .ignoresSafeArea()
                VStack(spacing: 24) {
                    
                    GifImage("flatOne")
                        .frame(width: 200, height: 200)
                        .padding(.bottom,10)
                    
                    Text("Let's make our day full of happiness!")
                        .font(.system(
                            size: 20,
                            weight: .medium,
                            design: .monospaced))
                        .foregroundColor(.black)
                        .multilineTextAlignment(.center)
                        .frame(maxWidth: 300)
                        .padding(.bottom,24)
                    
                    ButtonSubView()
                    
                    HStack(spacing: 20){
                        Image("orangeSmile1")
                        
                        NavigationLink(destination: InfoOne()){
                            Image("greyInfo1")
                        }
                        
                    }.padding(.top,107)
                    
                }
            }
        }.navigationViewStyle(.stack)
            .navigationBarHidden(true)
    }
    
    struct ButtonSubView: View {
        var body: some View{
            NavigationLink(destination: SmileTwo()){
                Text("Start happiness")
                    .fontWeight(.bold)
                    .font(.system(size: 20))
            }
            .padding(.all)
            .frame(width: 230.0)
            .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
            .background(Color.theButton)
            .cornerRadius(10)
        }
    }
}




