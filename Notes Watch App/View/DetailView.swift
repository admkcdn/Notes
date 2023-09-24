//
//  DetailView.swift
//  Notes Watch App
//
//  Created by Adem Koçdoğan on 24.09.2023.
//

import SwiftUI

struct DetailView: View {
    
    let note: Note
    let count: Int
    let index: Int
    
    @State private var isCredentPresent: Bool = false
    @State private var isSettingsPresent: Bool = false
    
    
    var body: some View {
        VStack(alignment: .center, spacing: 3){
            //HEADER
          HeaderView()
            
            //CONTENT
            Spacer()
            
            ScrollView(.vertical){
                Text(note.text)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
            }
            Spacer()
            //FOOTER
            HStack(alignment: .center){
                Image(systemName: "gear")
                    .imageScale(.large)
                    .onTapGesture {
                        isSettingsPresent.toggle()
                    }
                    .sheet(isPresented: $isSettingsPresent, content: {
                        SettingsView()
                    })
                Spacer()
                Text("\(count)/\(index+1)")
                Spacer()
                Image(systemName: "info.circle")
                    .imageScale(.large)
                    .onTapGesture {
                        isCredentPresent.toggle()
                    }
                    .sheet(isPresented: $isCredentPresent, content: {
                        CreditsView()
                    })
            }// HSTACK
            .foregroundColor(.secondary)
        }//: VSTACK
        .padding(3)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var sampleData: Note = Note(id: UUID(), text: "Güneşi selamla!")
    static var previews: some View {
        DetailView(note: sampleData, count: 5, index: 1)
    }
}
