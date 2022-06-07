//
//  FeedView.swift
//  EcoInvest
//
//  Created by aluno on 31/05/22.
//

import SwiftUI

struct FeedView: View {
    
    var body: some View {
        
        
        ScrollView{
            VStack(alignment: .center) {
                ZStack {
                    Text("Feed")
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
                
            LazyVStack {
                
                ForEach(0...10, id:\.self){ _ in
                    PostRowView()
                    
                }
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
            }
        }
    }
