import SwiftUI





struct ProjetosView: View {
    @State var input: String = ""
    
    var body: some View {
        
        ScrollView {
            VStack (alignment: .center) {
                
                
                Image("painel")
                    .padding()
                    .background(.gray)
                    .frame(width: 340, height: 160)
                    .cornerRadius(40)
                    .shadow(radius: 5)
                
                
                
                Image("planeta")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .overlay{
                        Circle().stroke(.white, lineWidth: 4)
                    }
                    .shadow(radius: 5)
                    .padding( .top, -80)
                
                
                
                Text("Implementacao de Paineis Solares")
                    .font(.headline)
                    .fontWeight(.heavy)
                    .frame(width: 325, height: 30)
                    .background(Color.gray)
                    .cornerRadius(15)
                
                
                Text("Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam.")
                    .font(.caption)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(width: 370, height: 100)
                
                    .background(Color.init(red: 20/255, green: 105/255, blue: 105/255))
                    .cornerRadius(15)
                
                Image("areaVerde")
                    .padding()
                    .background(.gray)
                    .frame(width: 340, height: 160)
                    .cornerRadius(40)
                    .shadow(radius: 5)
                
                Image("arvore")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .overlay{
                        Circle().stroke(.white, lineWidth: 4)
                    }
                    .shadow(radius: 5)
                    .padding( .top, -80)
                
                
                
                Text("Implementacao de Áreas Verdes")
                    .font(.headline)
                    .fontWeight(.heavy)
                    .padding()
                    .frame(width: 325, height: 30)
                    .background(Color.gray)
                    .cornerRadius(15)
                
                
                Text("Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam.")
                    .font(.caption)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(width: 370, height: 100)
                    .background(Color.init(red: 20/255, green: 105/255, blue: 105/255))
                    .cornerRadius(15)
            }
            
        }
    }
    
}

struct ProjectsView_Previews: PreviewProvider {
    static var previews: some View {
        PerfilUsuarioView()
        
    }
}
