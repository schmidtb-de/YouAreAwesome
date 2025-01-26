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
    @State private var imageNumber = 0
    @State private var messageNumber = 0
    
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
                
                message = messages[messageNumber]
                
                messageNumber += 1
                
                if messageNumber == messages.count {
                    messageNumber = 0
                }
                
                
                //TODO: - Update the imageName variable -
                imageName = "image\(imageNumber)"
                imageNumber += 1
                
                if imageNumber > 9 {
                    imageNumber = 0
                }
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
