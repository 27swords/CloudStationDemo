//
//  CloudStationView.swift
//  CloudStation
//
//  Created by Alexander Chervoncev on 15/6/2023.
//

import SwiftUI
import SceneKit

struct CloudStationView: View {
    @State private var scene: SCNScene? = nil
    private let optimizeScene = OptimizeScene()
    
    var body: some View {
        VStack {
            if let scene = scene {
                SCNViewWrapper(scene: scene)
                    .ignoresSafeArea(.all)
                    .frame(height: 1300)
                    .onAppear {
                        optimizeScene.optimizeSceneRendering()
                    }
            } else {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle())
            }
        }
        .onAppear {
            loadScene()
        }
    }
    
    private func loadScene() {
        DispatchQueue.global().async {
            let loadedScene = SCNScene(named: "Cloud_Station.usdz")
            DispatchQueue.main.async {
                self.scene = loadedScene
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        CloudStationView()
    }
}

