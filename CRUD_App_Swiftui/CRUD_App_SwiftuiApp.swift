
import SwiftUI

@main
struct CRUD_App_SwiftuiApp: App {
    @State private var showSplash = true
    
    var body: some Scene {
        WindowGroup {
            if showSplash {
                SplashView()
                    .onAppear{
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                            withAnimation{
                                showSplash = false
                            }
                        }
                    }
            }else{
                ContentView()
            }
           
        }
    }
}

struct SplashView : View{
    var body: some View{
        ZStack {
            Color.brown
            VStack{
                Image(systemName: "sparkles")
                    .resizable()
                    .frame(width: 100, height: 100)
                
                Text("Welcome")
                    .font(.title)
            }
            .foregroundColor(.white)
        }.ignoresSafeArea()
    }
}
