import Foundation
import SwiftUI



struct EmpresasView: View {
    var body: some View {
        
        ZStack {
            NavigationView{
                

                ZStack{
                    
                    Color("VerdeBonito")
                        .edgesIgnoringSafeArea(.top)
                        .padding(.bottom, 765)

                    
                }
                

                .navigationBarItems(trailing:
                        Image(systemName:"globe.americas.fill")
                                        .resizable()
                                        .frame(width: 70, height: 70, alignment: .center)
                                        .padding(.trailing, 310)
                        
                    )
                

            }
            
        
        

        VStack{

                NavigationLink(destination: EmpresaView()) {
                    SpecialButton(buttonText:"Pear", buttonImage:"Pear")
                }
                NavigationLink(destination: EmpresaView()) {
                    SpecialButton(buttonText:"Amazon", buttonImage:"Amazon")
                }
                NavigationLink(destination: EmpresaView()) {
                    SpecialButton(buttonText:"oBoticario", buttonImage:"oBoticario")
                }
                NavigationLink(destination: EmpresaView()) {
                    SpecialButton(buttonText:"Natura", buttonImage:"Natura")
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
.previewInterfaceOrientation(.portrait)
    }
}
}
