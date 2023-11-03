//
//  ContentView.swift
//  AppStatusTest
//
//  Created by 안병욱의 mac on 2023/11/03.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.scenePhase) var scenePhase

    var body: some View {
        Text("Hello, world!")
            .padding()
            .onChange(of: scenePhase) {
                if scenePhase == .active {
                    print("Active")
                } else if scenePhase == .inactive {
                    print("Inactive")
                } else if scenePhase == .background {
                    print("Background")
                }
            }
    }
}

