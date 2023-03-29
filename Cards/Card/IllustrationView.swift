//
//  IllustrationView.swift
//  Cards
//
//  Created by Nitin on 3/28/23.
//

import SwiftUI

struct IllustrationView: View {
    
    @State var title: LocalizedStringKey
    @State var image: String
    @State var price: String
    
    var body: some View {
        VStack {
            Text(title)
                .font(.title2)
            
            Image(image)
                .resizable()
                .frame(width: 200, height: 200)
                .aspectRatio(contentMode: .fill)
            
            HStack(alignment: .bottom) {
                Text("$")
                    .font(.system(size: 28))
                    .padding(.bottom, 5)
                
                Text("\(price)")
                    .font(.system(size: 44))
            }
            .foregroundColor(.purple.opacity(0.5))
        }
        .padding(.vertical, 28)
        .frame(maxWidth: .infinity)
        .background(.white)
        .cornerRadius(12)
        .shadow(color: .gray.opacity(0.15) , radius: 12)
    }
}

struct IllustrationView_Previews: PreviewProvider {
    static var previews: some View {
        IllustrationView(title: "Nature", image: "image2", price: "54")
    }
}
