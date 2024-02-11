//
//  VolumeControlView.swift
//  Apple Vision Pro
//
//  Controls volume
//

import SwiftUI

struct VolumeControlView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text("Volume")
                .font(.headline)
            HStack(spacing: 5) {
                ZStack {
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(width: 150, height: 45)
                        .opacity(0.8)
                    ZStack {
                        Circle()
                            .frame(width: 50, height: 45)
                            .shadow(color: .black.opacity(0.4), radius: 5.0, x: -2.0, y: 0.0)
                        Image(systemName: "speaker.wave.2.fill")
                            .foregroundStyle(.primary)
                            .imageScale(.large)
                            .foregroundStyle(Color(UIColor.systemBackground))
                    }
                    .offset(x: 55)
                }
                Button(action: {}, label: {
                    Image(systemName: "speaker.slash.circle.fill")
                        .font(.system(size: 45))
                        .foregroundStyle(.white, .gray.opacity(0.3))
                })
                .offset(x: 8)
            }
        }
    }
}

#Preview {
    VolumeControlView()
}
