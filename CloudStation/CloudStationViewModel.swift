//
//  OptimizeScene.swift
//  CloudStation
//
//  Created by Alexander Chervoncev on 15/6/2023.
//

import SwiftUI
import SceneKit

final class OptimizeScene: ObservableObject {
    
    
    ///The optimizeSceneRendering method sets the antialiasingMode of the SCNView to .multisampling4X, enabling antialiasing for the rendered scene.
    ///Antialiasing helps to smooth the edges of rendered objects, resulting in a more visually pleasing appearance.
    func optimizeSceneRendering() {
        SCNTransaction.animationDuration = 0.1
        
        guard let scnView = UIApplication.shared.windows.first?.rootViewController?.view.subviews.first as? SCNView else {
            return
        }
        
        scnView.antialiasingMode = .multisampling4X
    }
}
