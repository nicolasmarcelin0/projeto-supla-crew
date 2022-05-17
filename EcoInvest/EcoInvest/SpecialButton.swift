import Foundation
import SwiftUI

struct SpecialButton: View {
    var buttonText = "My Button"
    var buttonColor = Color("Color")
    var buttonImage = "Enterprise"
    
    var body: some View {
        ZStack(alignment: .leading) {
            
            RoundedRectangle(cornerRadius: 5)
                .frame(width: 350, height: 100)
                .cornerRadius(10)
                .foregroundColor(Color(hue: 0.265, saturation: 0.647, brightness: 0.700))
                .shadow(radius: 10)
                .cornerRadius(8)
            
            HStack {
                Image(buttonImage)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(Circle())
                    .overlay{
                        Circle().stroke(.white,lineWidth: 2)
                    }
                    .shadow(radius: 10)
                    .padding()
                Text(buttonText)
                    .bold()
                    .foregroundColor(Color.white)
                
            }
        }
    }
}

