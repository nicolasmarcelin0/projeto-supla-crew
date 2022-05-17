import SwiftUI



struct GrowingButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.caption)
            .multilineTextAlignment(.center)
            .frame(width: 70, height: 60)
            .background(Color.init(red: 200/255, green: 100/255, blue: 180/255))
            .cornerRadius(15)
            .shadow(radius: 5)
            .foregroundColor(.init( red: 80/255, green: 12/255, blue: 12/255, opacity: 100))
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}

struct EmpresaView: View {
//    let company: Company
    
    var body: some View {
        VStack(alignment: .center){
            
        ScrollView() {
        VStack(alignment: .center) {

            Rectangle()
                .fill(.green)
                .frame(width: 400, height: 200)
                .cornerRadius(50)
                .shadow(radius: 5)

            Image("group-fill")
                .resizable()
                .frame(width: 120, height: 120)
                .padding(.top, -65)
                .shadow(radius: 5)
            
            // Nome da empresa do tipo investidor
            Text(empresa_padrao.nome)
                .font(.headline)
                .fontWeight(.heavy)
                .padding(5)
                .background(Color.gray)
                .cornerRadius(15)
                .shadow(radius: 5)
 
            // Descrição da empresa do tipo investidor
            Text(empresa_padrao.descricao)
                .font(.caption)
                .padding()
                .background(Color.init(red: 20/255, green: 155/255, blue: 105/255))
                .cornerRadius(15)
                .shadow(radius: 5)
            
            HStack {
                Image("delete-bin-6-fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .padding(.top, 25)
                    .padding(.leading, -0)
                    .shadow(radius: 5)
 
                VStack {
                    Text("Implementacao de Áreas Verdes")
                        .font(.headline)
                        .frame(width: 290, height: 30)
                        .background(Color.init(red: 20/255, green: 125/255, blue: 105/255))
                        .cornerRadius(15)
                        .padding(.top, 15)
                        .shadow(radius: 5)
 
                    HStack {
                        Text("Descrição do projeto ''Implementação de áreas verdes''")
                            .font(.caption)
                            .multilineTextAlignment(.center)
                            .frame(width: 210, height: 60)
                            .background(Color.init(red: 20/255, green: 115/255, blue: 105/255))
                            .cornerRadius(15)
                            .padding(.leading, 0)
                            .shadow(radius: 5)
 
                        
                        Button("Empresa 1") {
                            print("...")
                        }
                        .buttonStyle(GrowingButton())
 
                    }
                    
                }
                    
            }
            
            HStack {
                Image("plant-fill")
                    
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding(.top, 25)
                    .padding(.leading, -0)
                    .shadow(radius: 5)
 
                
                
                VStack {
                    Text("Implementacao de painéis solares")
                        .font(.headline)
                        .frame(width: 290, height: 30)
                        .background(Color.init(red: 20/255, green: 125/255, blue: 105/255))
                        .cornerRadius(15)
                        .padding(.top, 15)
                        .shadow(radius: 5)
 
                    HStack {
                        Text("Descrição do projeto")
                            .font(.caption)
                            .multilineTextAlignment(.center)
                            .frame(width: 210, height: 60)
                            .background(Color.init(red: 20/255, green: 115/255, blue: 105/255))
                            .cornerRadius(15)
                            .padding(.leading, 0)
                            .shadow(radius: 5)
 
                        
                        Button("Empresa 2") {
                            print("...")
                        }
                        .buttonStyle(GrowingButton())
 
 
                    }
                    
                }
                    
            }
            /*
            HStack {
                Image("sun-foggy-fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .padding(.top, 25)
                    .padding(.leading, -0)
                    .shadow(radius: 5)
 
            VStack {
                Text("sun-foggy-fill")
                    .font(.headline)
                    .frame(width: 290, height: 30)
                    .background(Color.init(red: 20/255, green: 125/255, blue: 105/255))
                    .cornerRadius(15)
                    .padding(.top, 15)
                    .shadow(radius: 5)

                HStack {
                    Text("I plant flowers for you, for free, because i'm very cool :)")
                        .font(.caption)
                        .multilineTextAlignment(.center)
                        .frame(width: 210, height: 60)
                        .background(Color.init(red: 20/255, green: 115/255, blue: 105/255))
                        .cornerRadius(15)
                        .padding(.leading, 0)
                        .shadow(radius: 5)

                    
                    Button("Plant with me :)") {
                        print("test")
                    }
                    .buttonStyle(GrowingButton())

                }
                
            }
                */
            }
        }
        .padding(.top, 0)
    }
        
            /*
            HStack(alignment: .center) {
                Button {
                    print("you are not coming")
                } label: {
                    Image(systemName: "arrowshape.turn.up.backward")
                }
                .padding(.trailing, 40)
                .padding(5)
                Button {
                    print("I said, you're not going back")
                } label: {
                    Image(systemName: "house.fill")
                }
                .padding(.leading, 40)
                .padding(5)
        }
        */
    }
}


struct EmpresaView_Previews: PreviewProvider {
    static var previews: some View {
        EmpresaView()
    }
}
