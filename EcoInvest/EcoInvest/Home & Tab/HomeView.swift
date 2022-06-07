import SwiftUI

struct HomeView: View {
    init(){
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().barTintColor = UIColor(named: "Green-System")
    }
    
    @State var selectedIndex = 0
    
    let tabBarImagesNames = ["newspaper.fill","person.fill", "wrench.and.screwdriver.fill", "suitcase.fill"]
    
    var body: some View {
        VStack{
            ZStack {
                switch selectedIndex {
                case 0:
                    FeedView()
                case 1:
                    PerfilUsuarioView()
                case 2 :
                    ProjetosView()
                case 3:
                    EmpresasView()
                default:
                    FeedView()
                }
            }
            
            ZStack{
                Rectangle()
                    .foregroundColor(Color("Green-System"))
                    .frame(width: 500, height: 90)
                
                HStack{
                    ForEach(0..<4){num in
                        Button(action: {
                            selectedIndex = num
                        },
                               label:{
                        
                            Image(systemName: tabBarImagesNames[num])
                                .font(.system(size:29, weight: .bold))
                                .foregroundColor(selectedIndex == num ? Color(.white) : .init(white: 0.9))
                            
                        })
                        
                    }
                    .padding()
                }
                
                
            }
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
    }
}

/*
 var body: some View {
 
 TabView {
 
 LoginView()
 .tabItem {
 Label("Login", systemImage: "pencil")
 }
 PerfilUsuarioView()
 .tabItem {
 Label("Perfil", systemImage: "person")
 
 }
 
 ProjetosView()
 .tabItem {
 Label("Projetos", systemImage:"house")
 }
 EmpresasView()
 .tabItem {
 Label("Empresas", systemImage: "house")
 }
 
 
 }
 
 .navigationTitle("EcoInvest")
 }
 
 */

struct home_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

