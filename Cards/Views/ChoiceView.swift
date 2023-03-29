//
//  ChoiceView.swift
//  Cards
//
//  Created by Nitin on 3/27/23.
//

import SwiftUI

struct ChoiceView: View {
    
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var router: Router<Path>
    
    var body: some View {
        VStack {
                AppbarView(currentView: self)
                .padding()
            
            HStack {
                Text("Choose illustration")
                    .font(.headline)
                
                Spacer()
                
                Button(action: {
                    //filter
                }, label: {
                    Image(systemName: "slider.horizontal.3")
                        .padding(12)
                        .foregroundColor(.black)
                        .background(.purple.opacity(0.5))
                        .cornerRadius(10)
                })
                .padding(.vertical)
            }
            .padding()
            
            ScrollView {
                Button(action: {
                    router.push(.C)
                }, label: {
                    IllustrationView(title: "Nature", image: "image2", price: "54")
                        .padding()
                })
               
                Button(action: {
                    router.push(.C)
                }, label: {
                    IllustrationView(title: "Form", image: "image2", price: "67")
                        .padding()
                })
            }
            
         

        
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct ChoiceView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceView()
    }
}
