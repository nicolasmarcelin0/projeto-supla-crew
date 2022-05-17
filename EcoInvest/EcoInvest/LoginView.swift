import SwiftUI

struct LoginView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    
    var body: some View {
        
        
        NavigationView {
            ZStack {
                Color.green
                    .ignoresSafeArea()
                Circle()
                    .scale(1.7)
                    .foregroundColor(.white.opacity(0.15))
                Circle()
                    .scale(1.40)
                    .foregroundColor(.white)
                
                VStack {
                    Image("logo")
                        .resizable()
                        .frame(width: 215, height: 215)
                        .padding( .top, -80)
                        .shadow(radius: 20)
                    
                    Text("Login")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    TextField("Usuário", text: $username)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongUsername))
                    
                    SecureField("Senha", text: $password)
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                        .border(.red, width: CGFloat(wrongPassword))
                    
                    Button("Login") {
                        autheticateUser(username: username, password: password)
                        // Autenticacao do usuário
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.init(red: 0, green: 0, blue: 0))
                    .cornerRadius(10)
                    
                    
                    /*
                    NavigationLink(destination: Text("Você está logado como @\(username)"), isActive: $showingLoginScreen) {
                        
                        EmptyView()
                     
                    
                        
                    }
                     */
                    NavigationLink(destination: HomeView().navigationBarHidden(true), isActive: $showingLoginScreen) {
                        EmptyView()
                    }
                }
            }
        }
        .navigationBarHidden(true)
    }
    
    func autheticateUser(username: String, password: String) {
        if username.lowercased() == "admin" {
            wrongUsername = 0
            if password.lowercased() == "admin" {
                wrongPassword = 0
                showingLoginScreen = true
            } else {
                wrongPassword = 1
                print("Senha incorreta")
                
                
            }
            
            
        }
        
    }
    
    
    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }
    
}
