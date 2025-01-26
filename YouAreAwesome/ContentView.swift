//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Benjamin Schmidt on 20.01.25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var imageName = ""
    @State private var lastMessageNumber = -1
    @State private var lastImageNumber = 0
    
    var body: some View {
        
        VStack {
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.5)
                .frame(height: 100)
                .animation(.easeInOut(duration: 0.15), value: message)
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius: 30)
                .animation(.default, value: imageName)
            
            
            Spacer()
            
            Button("Sow Message!") {
                
                let messages = ["You are Awesome!",
                                "You are Great!",
                                "You are the Man!",
                                "You are Amazing!",
                                "You are incredible!",
                                "Never give up!"]
                
                var messageNumber: Int
                repeat {
                    messageNumber = Int.random(in: 0..<messages.count)
                } while messageNumber == lastMessageNumber
                message = messages[messageNumber]
                lastMessageNumber = messageNumber
                
                var imageNumber: Int
                repeat {
                    imageNumber = Int.random(in: 0..<10)
                } while imageNumber == lastImageNumber
                imageName = "image\(imageNumber)"
                lastImageNumber = imageNumber
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            
        }
        
        .padding()
    }
}

#Preview {
    ContentView()
}
