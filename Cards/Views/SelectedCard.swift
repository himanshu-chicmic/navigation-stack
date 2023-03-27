//
//  SelectedCard.swift
//  Cards
//
//  Created by Nitin on 3/27/23.
//

import SwiftUI

struct SelectedCard: View {
    
    @Environment(\.dismiss) var dismiss
    
    @EnvironmentObject var router: Router<Path>
    
    var body: some View {
        VStack {
                AppbarView(currentView: self)
            
            Spacer()
            
            Text("Great choice")
                .font(.system(size: 44))
                .fontWeight(.ultraLight)
            
            Text("William 😍")
                .font(.system(size: 34))
                .fontWeight(.semibold)
            
            CardView(bgColor: .blue)
            
            Text("The money will be\nautomatically debited\nfrom your card")
                .multilineTextAlignment(.center)
                .padding(.vertical, 44)
                .fontWeight(.light)
                .font(.system(size: 19))
            
            Spacer()
            
            Text("Back to choose a card")
                .foregroundColor(.red)
                .underline()
            
            Button(action: {
                router.push(.D)
            }, label: {
                Text("Apply")
                    .fontWeight(.semibold)
                    .frame(width: 154, height: 54)
                    .background(.yellow)
                    .foregroundColor(.black)
                    .cornerRadius(12)
            })
            .frame(maxWidth: .infinity)
            .padding()
        }
        .padding()
        .navigationBarBackButtonHidden(true)
    }
}

struct SelectedCard_Previews: PreviewProvider {
    static var previews: some View {
        SelectedCard()
    }
}
