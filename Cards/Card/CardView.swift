//
//  CardView.swift
//  Cards
//
//  Created by Nitin on 3/27/23.
//

import SwiftUI

struct CardView: View {
    
    @State var bgColor = Color.black
    
    var body: some View {
        ZStack {
            HStack {
                VStack(alignment: .leading) {
                    
                    HStack {
                        
                        HStack {
                            
                            AnyShape(Circle())
                                .frame(width: 4, height: 4)
                            AnyShape(Circle())
                                .frame(width: 4, height: 4)
                            AnyShape(Circle())
                                .frame(width: 4, height: 4)
                            AnyShape(Circle())
                                .frame(width: 4, height: 4)
                        }
                        
                        Text("7864")
                            .padding(.leading)
                            .font(.caption)
                    }
                    
                    Spacer()
                    
                    ZStack(alignment: .leading){
                        AnyShape(Circle())
                            .frame(width: 40, height: 40)
                        
                        AnyShape(Circle())
                            .frame(width: 34, height: 34)
                            .padding(.leading, 32)
                            .opacity(0.5)
                    }
                    
                    Spacer()
                    
                    Text("William Neiman")
                        .font(.callout)
                }
                
                Spacer()
                
                Image("card")
                    .resizable()
            }
            .padding()
            .foregroundColor(.white)
            .frame(maxWidth: .infinity, minHeight: 200,maxHeight: 250)
        }
        .background(bgColor)
        .cornerRadius(12)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
