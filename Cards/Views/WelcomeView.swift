//
//  WelcomeView.swift
//  Cards
//
//  Created by Nitin on 3/27/23.
//

import SwiftUI

struct WelcomeView: View {
    
    @State private var cardLocation = CGPoint(x: 0, y: 0)
    
    @EnvironmentObject var router: Router<Path>
    
    var body: some View {
        VStack(alignment: .leading) {
                AppbarView()
            
            Spacer()
            
            Text("Hello William 😇")
                .font(.system(size: 18))
                .fontWeight(.light)
                .padding(.bottom, 4)
            
            ZStack(alignment: .bottom){
                Text("Give Your\nBanking Card\na")
                    .font(.system(size: 44))
                    .fontWeight(.ultraLight)
                
                Text("New Look")
                    .font(.system(size: 44))
                    .fontWeight(.light)
                    .foregroundColor(.purple.opacity(0.5))
                    .padding(.leading, 20)
            }
            
            ZStack {
                
                CardView(bgColor: .yellow)
                    .rotationEffect(.degrees(-14))
                
                CardView(bgColor: .green)
                    .rotationEffect(.degrees(-6))
                
                CardView(bgColor: .purple)
                    .rotationEffect(.degrees(8))
                
                CardView(bgColor: .black)
                    .rotationEffect(.degrees(2))
                
            }
            .padding()
            
            Spacer()
            
            Text("Choose a Card")
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity)
                .fontWeight(.semibold)
            
            HStack {
                Spacer()
                Button(action: {
                    router.push(.B)
                }, label: {
                    Text("Create new")
                        .padding()
                        .fontWeight(.semibold)
                        .background(.yellow)
                        .foregroundColor(.black)
                        .cornerRadius(12)
                }).padding()
                Spacer()
            }
            
        }
        .padding()
        .navigationBarBackButtonHidden(true)
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
