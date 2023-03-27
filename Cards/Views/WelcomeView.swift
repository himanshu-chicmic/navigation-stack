//
//  WelcomeView.swift
//  Cards
//
//  Created by Nitin on 3/27/23.
//

import SwiftUI

struct WelcomeView: View {
    
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
                    .font(.system(size: 54))
                    .fontWeight(.ultraLight)
                
                Text("New Look")
                    .font(.system(size: 54))
                    .fontWeight(.light)
                    .foregroundColor(.purple.opacity(0.5))
                    .padding(.leading, 20)
            }
            
            ZStack {
                
                CardView(bgColor: .yellow)
                    .padding(24)
                    .rotationEffect(.degrees(-14))
                
                CardView(bgColor: .green)
                    .padding(20)
                    .rotationEffect(.degrees(-6))
                
                CardView(bgColor: .purple)
                    .padding(22)
                    .rotationEffect(.degrees(8))
                
                
                CardView(bgColor: .black)
                    .padding(18)
                    .rotationEffect(.degrees(2))
                
            }
            
            Spacer()
            
            Text("Choose a Card")
                .multilineTextAlignment(.center)
                .frame(maxWidth: .infinity)
                .fontWeight(.semibold)
            
            Button(action: {
                router.push(.B)
            }, label: {
                Text("Create new")
                    .fontWeight(.semibold)
                    .frame(width: 154, height: 54)
                    .background(.yellow)
                    .foregroundColor(.black)
                    .cornerRadius(12)
                    .frame(maxWidth: .infinity)
            })
            
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
