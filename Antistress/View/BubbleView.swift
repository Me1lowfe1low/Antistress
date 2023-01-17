//
//  BubbleView.swift
//  Antistress
//
//  Created by Дмитрий Гордиенко on 03.01.2023.
//

import SwiftUI

struct BubbleView: View {
    @Binding var bubble: Bubble
    @State var player: AudioExtension = AudioExtension(path: "Pop.wav")
    
    var body: some View {
        VStack {
            Image(bubble.getBubbleView())
                .resizable()
                .scaledToFit()
                .padding()
        }
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.gray, lineWidth: 2)
        )
        .onTapGesture {
            if  !bubble.isBurst {
                player.playSound()
                bubble.burstTheBubble()
                print("Bubble tapped")
            } else {
                print("Bubble was already tapped")
            }
        }
    }
}

/*
struct Bubble_Previews: PreviewProvider {
    static var previews: some View {
        BubbleView(bubble: Bubble.bubbleSample)
    }
}
*/
