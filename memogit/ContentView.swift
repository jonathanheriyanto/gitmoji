//
//  ContentView.swift
//  memogit
//
//  Created by Jonathan Heriyanto on 21/03/23.
//

import SwiftUI

let backgroundColor = Color("forBg")

struct ContentView: View {
    //buat variabel untuk isi text field nya
    @State var textFieldValue: String = ""
    
    var body: some View {
        VStack {
            Image("test")
                .imageScale(.large)
                .foregroundColor(.accentColor)
                .padding(.top, 62)
            
            Image("test2")
                .resizable()
//              .frame(width: 200.87 ,height: 147)
                .scaledToFit()
                .scaleEffect(0.6)
                .padding(.top, -124)
            
            Text("Insert your own storymoji!")
                .foregroundColor(Color("darkOrange"))
                .font(.system(.title2, design: .rounded))
                .bold()
                .padding(.top, -44)
            
            //langsung dipanggil aja variabel nya
            TextField("", text: $textFieldValue)
                .padding()
                .frame(maxWidth: 290, maxHeight: 46)
                .background(.white)
                .cornerRadius(8)
                .shadow(color: Color.black.opacity(0.22), radius: 9.0, x: 0.0, y: 1.0)
//            Spacer()
            
            VStack{
                Button {
                    print(textFieldValue)
                } label: {
                    Image(systemName: "shareplay")
                        .imageScale(.large)
                    
                    Text("Be a Host")
                        .font(.system(.title2, design: .rounded))
                        .bold()
                }
                .frame(width: 196, height: 55)
                .background(Color("darkOrange"))
                .foregroundColor(backgroundColor)
                .cornerRadius(17)
                
                Button {
                    print("Peer")
                } label: {
                    Image(systemName: "person.fill")
                        .imageScale(.medium)
                    
                    Text("Join a Game")
                        .font(.system(.title2, design: .rounded))
                        .bold()
                }
                .frame(width: 220, height: 55)
                .background(Color("darkOrange"))
                .foregroundColor(backgroundColor)
                .cornerRadius(17)
                .padding(.top, 15)
            }
            .padding(.top, 45)
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .background(backgroundColor)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
