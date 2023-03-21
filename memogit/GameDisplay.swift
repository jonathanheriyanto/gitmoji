//
//  SwiftUIView.swift
//  memogit
//
//  Created by Jonathan Heriyanto on 21/03/23.
//

import SwiftUI

import SwiftUI

struct GameDisplay: View {
    var body: some View {
        ZStack {
            Image("bg1")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("guess")
                    .padding(65)
                
                Spacer()
            }
        }
        
    }
}

struct GameDisplay_Previews: PreviewProvider {
    static var previews: some View {
        GameDisplay()
    }
}
