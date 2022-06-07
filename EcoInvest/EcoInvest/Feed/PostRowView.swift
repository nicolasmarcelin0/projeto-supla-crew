//
//  PostRowView.swift
//  EcoInvest
//
//  Created by aluno on 02/06/22.
//

import SwiftUI

struct PostRowView: View {
    
    var body: some View {
        VStack(alignment: .leading){
            HStack(alignment: .top, spacing: 12){
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color("Green-System"))
                
                VStack(alignment: .leading, spacing: 4){
                    HStack{
                        Text("User")
                        
                        Text("@user")
                            .foregroundColor(.gray)
                        
                        Text("2s")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    
                Text("Icentivei na Amazon!")
                }
            }
        
            HStack{
                Button{
                }label: {
                    Image(systemName: "arrow.turn.up.right")
                }
                
                Spacer()
                
                Button{
                    
                }label: {
                    Image(systemName: "person.fill.questionmark")
                }
                
                Spacer()
                
                Button{
                    
                }label: {
                    Image(systemName: "arrowshape.turn.up.right.fill")
                }
            }
            .padding()
        }
        .padding()
    }
}

struct PostRowView_Previews: PreviewProvider {
    static var previews: some View {
        PostRowView()
    }
}
