//
//  ContentView.swift
//  WatchLandmarks Watch App
//
//  Created by Po Hsiang Chao on 2023/6/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
