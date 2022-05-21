import SwiftUI

struct HomeView: View {
    init() {
        UITabBar.appearance().barTintColor = .green
    }
    
    var body: some View {
        
        
        TabView {
            /*
            LoginView()
                .tabItem {
                    Label("Login", systemImage: "pencil")
                }
             */
            PerfilUsuarioView()
                .tabItem {
                    Label("Perfil", systemImage: "person")
                        
                }
                
            ProjetosView()
                .tabItem {
                    Label("Projetos", systemImage: "pencil")
                }
            EmpresasView()
                .tabItem {
                    Label("Empresas", systemImage: "house")
                }
                
            
        }
        .navigationTitle("EcoInvest")
    }
}

struct home_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
