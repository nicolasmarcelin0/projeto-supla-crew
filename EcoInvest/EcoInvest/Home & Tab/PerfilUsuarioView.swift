import SwiftUI

struct PerfilUsuarioView: View {
    
    // Habilitando fundo para o TextEditor()
    init() {
        UITextView.appearance().backgroundColor = .clear
    }
    
    @State var count: Int = 0
    @State var input: String = ""
    // Bio do usuário
    @State var bio: String = ""
    
    var body: some View {
        

        VStack {
            ZStack {
                Text("Perfil")
                    .font(.title)
                    .fontWeight(.bold)
                    .frame(width: 450, height: 75, alignment: .center)
                    .padding(.trailing, -8)
                    .foregroundColor(.white)
                    .background(.green)
                
                Image("logo")
                    .resizable()
                    .frame(width: 90, height: 90, alignment: .center)
                    .padding(.trailing, 300)

            }
            // Ft. de perfil e campo p/ nome de
            // usuário
            HStack {
                // Foto de perfil
                Image(systemName: "person.fill")
                    .foregroundColor(Color.green)
                    .frame(width: 100, height: 100)
                
                //                HStack {
                //                    Image(systemName: "person.fill")
                //                        .resizable()
                //                        .foregroundColor(Color.green)
                //                        .frame(width: 50, height: 50)
                //                }
                //                .padding(.horizontal, 35)
                //                .padding(.vertical, 20)
                //                .frame(width: 100, height: 100, alignment: .topLeading)
                
                
                // Nome de usuário
                TextField(
                    text: $input,
                    label: {
                        Text("Nome de usuário")
                    }
                )
                    .frame(width: 150, height: 20)
                    .padding(10)
                    .background(.green.opacity(0.50))
                    .cornerRadius(10.0)
                
                Button("Editar") {
                    
     
                }
            }
            
            
            // Bio do usuário
            ZStack(alignment: .leading) {
                if bio.isEmpty {
                    Text("Biografia")
                        .foregroundColor(.gray)
                        .padding(.all)
                }
                TextEditor(text: $bio)
                    .padding(.all)
                    .frame(width: 400, height: 125)
                    .background(.green.opacity(0.50))
                    .cornerRadius(10.0)
            }
            
            //            TextField(
            //                text: $bio,
            //                label: {
            //                    Text("Biografia")
            //                })
            //                    .background(.green.opacity(0.50))
            //                    .cornerRadius(10.0)
            
            
            
    
            // Barra de infos 1
            HStack {
                
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
            .padding(10)
            
            // Barra de contribuições
            ScrollView {
                HStack {
                    // Ícone do projeto
                    Image(systemName: "cloud.fill")
                        .frame(width: 100, height: 100)
                    // Título e descrição dos projetos que o usuário está envolvido
                    Text("Descrição do projeto")
                        .frame(width: 300, height: 100)
                        .background(.green.opacity(0.50))
                        .cornerRadius(10.0)
                }
                HStack {
                    // Ícone do projeto
                    Image(systemName: "cloud.fill")
                        .frame(width: 100, height: 100)
                    // Título e descrição dos projetos que o usuário está envolvido
                    Text("Descrição do projeto")
                        .frame(width: 300, height: 100)
                        .background(.green.opacity(0.50))
                        .cornerRadius(10.0)
                }
                HStack {
                    // Ícone do projeto
                    Image(systemName: "cloud.fill")
                        .frame(width: 100, height: 100)
                    // Título e descrição dos projetos que o usuário está envolvido
                    Text("Descrição do projeto")
                        .frame(width: 300, height: 100)
                        .background(.green.opacity(0.50))
                        .cornerRadius(10.0)
                }
                HStack {
                    // Ícone do projeto
                    Image(systemName: "cloud.fill")
                        .frame(width: 100, height: 100)
                    // Título e descrição dos projetos que o usuário está envolvido
                    Text("Descrição do projeto")
                        .frame(width: 300, height: 100)
                        .background(.green.opacity(0.50))
                        .cornerRadius(10.0)
                }
                HStack {
                    // Ícone do projeto
                    Image(systemName: "cloud.fill")
                        .frame(width: 100, height: 100)
                    // Título e descrição dos projetos que o usuário está envolvido
                    Text("Descrição do projeto")
                        .frame(width: 300, height: 100)
                        .background(.green.opacity(0.50))
                        .cornerRadius(10.0)
                }
                
                
                
                
                //                VStack {
                //                    Text("Lorem Ipsum dolor sit amet")
                //                        .font(.body)
                //                        .fontWeight(.bold)
                //                        .multilineTextAlignment(.leading)
                //                        .padding()
                //                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc consectetur metus in egestas commodo. Mauris ante elit, accumsan sit amet mi a, varius volutpat enim.")
                //                        .foregroundColor(.gray)
                //                        .multilineTextAlignment(.leading)
                //                        .padding()
                //                }
                //                .frame(width: 300)
                //                .background(Color.green.opacity(0.10))
                //                .cornerRadius(3.0)
                
                
            }
        }
        .padding(10)
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            PerfilUsuarioView()

        }
    }
}

