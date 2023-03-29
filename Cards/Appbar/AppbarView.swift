//
//  AppbarView.swift
//  Cards
//
//  Created by Nitin on 3/27/23.
//

import SwiftUI

struct AppbarView: View {
    
    @State var currentView: Any?
    @State var isPressed = false
    
    var body: some View {
        HStack {
            Button(action: {
                if let currentView = currentView as? ApplyView {
                    
                    currentView.router.pop()
                    
                }
                else if let currentView = currentView as? SelectedCard {
                    currentView.router.pop()
                    
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
            
            Button(action: {
                
                withAnimation{
                    isPressed.toggle()
                }
                
            }, label: {
                ZStack(alignment: isPressed ? .trailing : .leading) {
                    
                    if isPressed {
                        ZStack() {
                            
                            Image(systemName: "moon.fill")
                                .foregroundColor(.white)
                                .padding(.trailing, 35)
                                
                        }
                        .frame(width: 84, height: 44)
                        .background(.purple.opacity(0.5))
                        .cornerRadius(100)
                    }else {
                        ZStack() {
                            
                            Image(systemName: "sun.max.fill")
                                .foregroundColor(.white)
                                .padding(.leading, 35)
                                
                        }
                        .frame(width: 84, height: 44)
                        .background(.purple.opacity(0.5))
                        .cornerRadius(100)
                    }
                    
                    Image(isPressed ? "usericon" : "usericon-light")
                        .resizable()
                        .frame(width: 42, height: 42)
                        .clipShape(Circle())
                        .padding(.leading, 2)
                        .padding(.trailing, 2)
                    
                }
            })
            
        }
    }
}

struct AppbarView_Previews: PreviewProvider {
    
    
    
    static var previews: some View {
        AppbarView()
    }
}
