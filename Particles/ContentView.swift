//
//  ContentView.swift
//  Particles
//
//  Created by Eric on 12/01/2024.
//

import SwiftUI

struct EmitterView: View {
    private struct ParticleView: View {
        var body: some View {
            Image(.spark)
        }
    }
    
    var particleCount: Int
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                ForEach(0..<self.particleCount, id: \.self) { i in
                    ParticleView()
                }
            }
        }
    }
}

struct ContentView: View {
    var body: some View {
        ZStack {
            EmitterView(particleCount: 200)
        }
        .background(.black)
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
