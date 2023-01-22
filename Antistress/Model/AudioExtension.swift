//
//  AudioExtension.swift
//  Antistress
//
//  Created by Дмитрий Гордиенко on 03.01.2023.
//

import Foundation
import AVFoundation
import UIKit

class AudioExtension: NSObject, ObservableObject {
    var player: AVAudioPlayer!
    
    
    init(path: String) {
        let path = Bundle.main.path(forResource: path, ofType: nil)!
        let url = URL(fileURLWithPath: path)
        print("Sound file was successfully used: \(path)")
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.volume = 1
            player?.prepareToPlay()
            //player?.setVolume(1.0, fadeDuration: 0)
        }
        catch {
            print("Issue with getting audio file \(error.localizedDescription)")
        }
    }
    
    func playSound() {
        player?.play()
    }
}
