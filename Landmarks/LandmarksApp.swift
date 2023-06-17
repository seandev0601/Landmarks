//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Po Hsiang Chao on 2023/6/17.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
