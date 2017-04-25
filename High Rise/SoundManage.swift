//
//  SoundManage.swift
//  High Rise
//
//  Created by 邱柏荧 on 2017/4/25.
//  Copyright © 2017年 Ray Wenderlich. All rights reserved.
//

import Foundation
import SceneKit
import SpriteKit

class SoundManage: NSObject {
    
    var sounds = [String: SCNAudioSource]()
    
    
    override init() {
        super.init()
        // 加载音效
        loadSound(name: "GameOver", path: "HighRise.scnassets/Audio/GameOver.wav")
        loadSound(name: "PerfectFit", path: "HighRise.scnassets/Audio/PerfectFit.wav")
        loadSound(name: "SliceBlock", path: "HighRise.scnassets/Audio/SliceBlock.wav")
    }
    
    /// 完美匹配声音
    func playPerfectFitSound(node: SCNNode) {
        playSound(sound: "PerfectFit", node: node)
    }
    func playGameOverSound(node: SCNNode) {
        playSound(sound: "GameOver", node: node)
    }
    func playSliceBlockSound(node: SCNNode) {
        playSound(sound: "SliceBlock", node: node)
    }
    
    
    private func loadSound(name: String, path: String) {
        if let sound = SCNAudioSource(fileNamed: path) {
            sound.isPositional = false
            sound.volume = 1
            sound.load()
            sounds[name] = sound
        }
    }
    
    
    func playSound(sound: String, node: SCNNode) {
        node.runAction(SCNAction.playAudio(sounds[sound]!, waitForCompletion: false))
    }
}
