import SwiftUI

struct SmileTwo: View{
    @State var countDownTimer = 15
    @State var timerRunning = false
    let timer = Timer.publish(every: 1, on:.main, in:.common).autoconnect()
    
    var body: some View{
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack(){
                
                Spacer(minLength: 130)
                
                GifImage("smileOne")
                    .frame(width: 200, height: 200)
                
                Text("Smile for 15 seconds")
                    .font(.system(
                        size: 20,
                        weight: .medium,
                        design: .monospaced))
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .frame(maxWidth: 300)
                
                Text("\(countDownTimer)")
                    .onReceive(timer){_ in
                        if countDownTimer > 0 && timerRunning{
                            countDownTimer -= 1
                        } else {
                            timerRunning = false
                        }
                    }.padding(.top,10)
                    .font(.system(
                        size: 64,
                        weight: .black,
                        design: .monospaced))
                    .foregroundColor(.orange)
                    .multilineTextAlignment(.center)
                    .padding(.bottom,5)
                
                HStack(spacing: 45){
                    Button("Start"){
                        timerRunning = true
                    }
                    
                    Button("Reset"){
                        countDownTimer = 15
                    }.foregroundColor(.red)
                }
                
                Spacer()
                
                if(countDownTimer == 0){
                    ButtonSubView()
                }
                
                Spacer()
                
                HStack(spacing: 20){
                    Image("orangeSmile1")
                    
                    NavigationLink(destination: InfoOne()){
                        Image("greyInfo1")
                    }
                }.padding(.bottom,62)
                
                
            }
        }.navigationBarHidden(true)
    }
    struct ButtonSubView: View {
        var body: some View{
            NavigationLink(destination: SmileThree()){
                Text("Continue")
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






