import Foundation
import SwiftUI

struct EmpresasView: View {
    
    let empresas = ["Amazon", "Natura", "Apple"]
    
    let empresasComoObjeto = [
        Empresa(nome: "Amazon", descricao: "Lorem ipsum dolor sit amet", icone: "Amazon"),
        Empresa(nome: "Natura", descricao: "Amet sit dolor ipsum lorem", icone: "Natura"),
        Empresa(nome: "Apple", descricao: "Lorem lorem ipsum ipsum dolor dolor sit sit amet amet", icone: "Pear")
    ]
    
    var body: some View {
        VStack {

                
            NavigationView {
                ScrollView {
                    VStack {
                        ForEach(empresasComoObjeto, id: \.nome) { empresa in
                            NavigationLink(destination: EmpresaView(empresa: empresa)) {
                                SpecialButton(buttonText: empresa.nome, buttonImage: empresa.icone)
                            }
                            .ignoresSafeArea()
                        }
                    }
                    
                }
                .navigationTitle(Text("Empresas"))
                
            }
            
            
        }
        
    }
}



//        VStack (alignment: .center) {
//            ZStack(alignment: .leading){
//                Rectangle()
//                    .fill(Color(hue: 0.265, saturation: 0.647, brightness: 0.431))
//                    .frame(width: .infinity, height: 100)
//                HStack {
//                    Image("logo")
//                        .resizable()
//                        .frame(width: 90, height: 90)
//                        .padding()
//
//                    Text("Empresas")
//                        .font(.largeTitle)
//                        .fontWeight(.heavy)
//                        .bold()
//                        .foregroundColor(Color.white)
//                        .padding()
//                    }
//                }
//                SpecialButton(buttonText:"Pear",buttonImage:"Pear")
//                SpecialButton(buttonText:"Amazon",buttonImage:"Amazon")
//                SpecialButton(buttonText:"oBoticario",buttonImage:"oBoticario")
//                SpecialButton(buttonText:"Natura",buttonImage:"Natura")
//
//            }





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmpresasView()
    }
}

