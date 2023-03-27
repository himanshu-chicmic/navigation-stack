//
//  ApplyView.swift
//  Cards
//
//  Created by Nitin on 3/27/23.
//

import SwiftUI

struct ApplyView: View {
    
    @Environment(\.dismiss) var dismiss
    
    @EnvironmentObject var router: Router<Path>
    
    var body: some View {
        
        VStack {
            
            AppbarView(currentView: self)
            
            Spacer()
        }
        .padding()
        .navigationBarBackButtonHidden(true)
    }
}

struct ApplyView_Previews: PreviewProvider {
    static var previews: some View {
        ApplyView()
    }
}
