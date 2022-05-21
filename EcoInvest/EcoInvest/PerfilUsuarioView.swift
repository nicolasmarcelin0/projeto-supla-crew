import SwiftUI

struct PerfilUsuarioView: View {
    @State var count: Int = 0
    @State var input: String = ""
    // Bio do usuário
    @State var bio: String = ""
    
    var body: some View {
        
        GeometryReader { geo in
            ZStack {
                Image("fundo")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                VStack (alignment: .center) {
            // Ft. de perfil e campo p/ nome de usuário
            HStack {
                // Foto de perfil
                ZStack() {
                    Circle()
                        .frame(width: 100, height: 100)
                        .foregroundColor(Color.white)
                    Image(systemName: "person.fill")
                        .resizable()
                        .foregroundColor(Color.green)
                        .frame(width: 50, height: 50)

                }
                .padding(0)
                .frame(width: 100, height: 100, alignment: .topLeading)
                Spacer()
                // Nome de usuário
                TextField(
                    text: $input,
                    label: {
                        Text("Nome de usuário")
                    }
                )
                    .frame(width: 150, height: 20)
                    .padding(10)
                    .background(.green.opacity(0.10))
                    .cornerRadius(10.0)
            }
            // Bio do usuário
            TextField(
                text: $bio,
                label: {
                    Text("Biografia")
                })
                .padding(.horizontal)
                .padding(.vertical, 40)
                .background(Color.green.opacity(0.10))
                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
            // Barra de infos 1
            HStack {
                Rectangle()
                    .frame(width: 100, height: 50)
                    .cornerRadius(100)
                    .foregroundColor(Color.gray)
                Spacer()
                Button(
                    action: {
                        count += 1
                    },
                    label: {
                        HStack {
                            Image(systemName: "star.fill")
                            Text("Prêmios \n\(count)")
                        }
                        
                    }
                )
                    .frame(width: 150, height: 50)
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(100)
            }
        
            
            
            //
            HStack {
                Image(systemName: "cloud.fill")
                    .resizable()
                    .frame(width: 80, height: 50)
                    .foregroundColor(Color.green.opacity(0.30))
                Spacer()
                // Título e descrição dos projetos que o usuário está envolvido
                VStack {
                    Text("Lorem Ipsum dolor sit amet")
                        .font(.body)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.leading)
                        .padding()
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc consectetur metus in egestas commodo. Mauris ante elit, accumsan sit amet mi a, varius volutpat enim.")
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                        .padding()
                }
                .frame(width: 300)
                .background(Color.green.opacity(0.10))
                .cornerRadius(3.0)
                
            }
            Spacer()
    }
        .padding()
        
}
        


        }
    }
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PerfilUsuarioView()
        }
    }
}

