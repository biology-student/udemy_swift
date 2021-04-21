//
//  WithOutMP3.swift
//  QuestionApp1
//
//  Created by Yoshikazu Tsuka on 2021/04/19.
//

import Foundation

class WithOutMP3: SoundFile {
    
    override func playSound(fileName: String, extensionName: String) {
        
        if extensionName == "mp3" {
            print("このファイルは再生できませんごめん")
        }
        player?.stop()
    }
}
