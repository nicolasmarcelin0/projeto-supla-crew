import SwiftUI


import SwiftUI

struct GrowingButton2: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.title)
            .multilineTextAlignment(.center)
            .frame(width: 250, height: 60)
            .background(Color("Green-System"))
            .cornerRadius(15)
            .shadow(radius: 2)
            .foregroundColor(Color.black)
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}

struct EmpresaView: View {
    
    let empresa: Empresa
    
    @State var offset: CGFloat = 0
    @State private var search: String = ""
    
    var body: some View {
        ZStack{
        
            Color(UIColor(red: 0.96, green: 0.96, blue: 0.96, alpha: 1.00))
                .edgesIgnoringSafeArea(.all)
            
        ScrollView(.vertical, showsIndicators: false,
               content: {
            VStack(spacing :15){
                
                GeometryReader{proxy -> AnyView in
                    
                    let minY = proxy.frame(in: .global).minY
                    
                    DispatchQueue.main.async{
                        self.offset = minY
                    }
                    
                    return AnyView(
                        
                        ZStack{
                            Image("amazon_wallpaper")
                                .resizable()
                                .aspectRatio( contentMode: .fill)
                                .frame(width:getRect().width,height: minY > 0 ? 180 + minY : nil, alignment: .center)
                                .cornerRadius(0)
                        }
                            .frame(height: minY > 0 ? 180 + minY : nil)
                        .offset(y: minY > 0 ? -minY : 0)
                    )
                }
                .frame(height:180)
                
                VStack{
                
                    HStack{
                        Image(empresa.icone)
                        .resizable()
                        .frame(width: 100, height: 100)
                        .clipShape(Circle())
                        .overlay{
                            Circle().stroke(.white, lineWidth: 4)
                        }
                        .shadow(radius: 5)
                        .padding( .top, -30)
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .center, spacing: 10, content: {
                        Text(empresa.nome)
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.black)
                            .padding(5)
                            .cornerRadius(15)
             
                        })
                    
                    Spacer()
                    
                    
                    HStack{
                        HStack {
                            Image(systemName: "bag.fill")
                                .padding(.trailing, 8)
                            TextField("Procurar Projeto", text: $search)
                        }
                        .padding(.all, 20)
                        .background(Color.white)
                        .cornerRadius(10.0)
                        .padding(.trailing)
                    }
                    ZStack{
                        
                    
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
                                .font(.title2)
                                .cornerRadius(15)
                                .padding(.top, 15)
                                .shadow(radius: 2)
         
                            HStack {
                                Button("INVESTIR") {
                                    print("...")
                                }
                                .buttonStyle(GrowingButton2())
                            }
                        }
                        }
                            
                    }
                }
            }
        })
            .ignoresSafeArea(.all, edges: .top)
    }
    }
}

extension View{
    func getRect()->CGRect{
        return UIScreen.main.bounds
    }
}


/*
struct GrowingButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.caption)
            .multilineTextAlignment(.center)
            .frame(width: 250, height: 60)
            .background(Color.init(red: 200/255, green: 100/255, blue: 180/255))
            .cornerRadius(15)
            .shadow(radius: 5)
            .foregroundColor(.init( red: 80/255, green: 12/255, blue: 12/255, opacity: 100))
            .scaleEffect(configuration.isPressed ? 1.2 : 1)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
    }
}

struct EmpresaView: View {
    let company: Company
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Image("fundo")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
            
        ScrollView() {
        VStack(alignment: .center) {

            Image("amazon_wallpaper")
                .resizable()
                .scaledToFit()
                .frame(width: 400, height: 160)
                .cornerRadius(40)
                .shadow(radius: 5)

            Image("Amazon")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
                .overlay{
                    Circle().stroke(.white, lineWidth: 4)
                }
                .shadow(radius: 5)
                .padding( .top, -80)
            
             Nome da empresa do tipo investidor
            Text(empresa_padrao.nome)
                .font(.headline)
                .fontWeight(.heavy)
                .padding(5)
                .background(Color.gray)
                .cornerRadius(15)
                .shadow(radius: 5)
 
             Descrição da empresa do tipo investidor
           /Text(empresa_padrao.descricao)
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
                
            }
        }
        .padding(.top, 0)
    }
        
            
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
        
    }
}
*/

struct EmpresaView_Previews: PreviewProvider {
    static var previews: some View {
        EmpresaView(empresa: .empresa_padrao)
    }
}

