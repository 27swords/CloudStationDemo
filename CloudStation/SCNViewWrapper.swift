//
//  SCNViewWrapper.swift
//  CloudStation
//
//  Created by Alexander Chervoncev on 15/6/2023.
//

import SwiftUI
import SceneKit

struct SCNViewWrapper: UIViewRepresentable {
    let scene: SCNScene
    
    /// Creates the `SCNView` and configures it with the provided scene and rendering settings.
    func makeUIView(context: Context) -> SCNView {
        let scnView = SCNView(frame: .zero)
        scnView.scene = scene
        scnView.autoenablesDefaultLighting = true
        scnView.allowsCameraControl = true
        return scnView
    }
    
    ///Updates the `SCNView` with the latest configuration, if needed.
    func updateUIView(_ scnView: SCNView, context: Context) {}
}
