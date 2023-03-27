//
//  AppbarView.swift
//  Cards
//
//  Created by Nitin on 3/27/23.
//

import SwiftUI

struct AppbarView: View {
    
    @State var currentView: Any?
    
    var body: some View {
        HStack {
            Button(action: {
                if let currentView = currentView as? ApplyView {
                    
                    currentView.router.pop2()
                    
                }
                else if let currentView = currentView as? SelectedCard {
                    currentView.router.pop2()
                    
                }
                else if let currentView = currentView as? ChoiceView {
                    currentView.router.pop()
                }
                
            }, label: {
                Image(systemName: "arrow.left")
                    .resizable()
                    .frame(width: 24, height: 18)
                    .foregroundColor(.black)
            })
            
            Spacer()
            
            ZStack(alignment: .leading) {
                
                ZStack() {
                    
                    Image(systemName: "ellipsis")
                        .foregroundColor(.black)
                        .rotationEffect(.degrees(90))
                        .padding(.leading, 35)
                        
                }
                .frame(width: 74, height: 44)
                .background(.purple.opacity(0.5))
                .cornerRadius(100)
                
                Image("usericon")
                    .resizable()
                    .frame(width: 42, height: 42)
                    .clipShape(Circle())
                    .padding(.leading, 2)
            }
        }
    }
}

struct AppbarView_Previews: PreviewProvider {
    static var previews: some View {
        AppbarView()
    }
}
