//
//  CreditsView.swift
//  Notes Watch App
//
//  Created by Adem Koçdoğan on 24.09.2023.
//

import SwiftUI

struct CreditsView: View {
    
    @State private var randomNumber: Int = Int.random(in: 1..<4)
    
    private var randomImage: String {
        return "developer-no\(randomNumber)"
    }
    
    var body: some View {
        VStack(spacing:3){
            
            Image(randomImage)
                .resizable()
                .scaledToFit()
                .layoutPriority(1)
            
            HeaderView(title: "Credits")
            
            Text("Adem Koçdoğan")
                .fontWeight(.bold)
                .foregroundColor(.primary)
            
            Text("Developer")
                .font(.footnote)
                .fontWeight(.light)
                .foregroundColor(.secondary)
        }
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
