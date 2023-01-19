//
//  ContentView.swift
//  Antistress
//
//  Created by Дмитрий Гордиенко on 03.01.2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var bubbleSet = BubbleViewModel(elements: 16)
    @StateObject var player: AudioExtension = AudioExtension(path: "Pop.wav")
    
    var body: some View {
        VStack {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 70 ))]) {
                ForEach(0..<bubbleSet.elements, id: \.self) { bubbleID in
                                BubbleView(bubble: $bubbleSet.array[bubbleID])
                                    .environmentObject(player)
                            }
                        }
                        .padding(.horizontal)
                        .scaledToFit()
            Button(action: {
                bubbleSet.repair()
                print("Bubbles should be set to initial state")
            }, label: {
                Text("Refresh")
                
            })
            .padding()
            .overlay(
                    Capsule()
                        .stroke(.gray, lineWidth: 5)
                    )   
        }
        .padding()
    }
}
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
