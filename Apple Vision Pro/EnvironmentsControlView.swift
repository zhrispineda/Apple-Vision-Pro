//
//  EnvironmentsControlView.swift
//  Apple Vision Pro
//
//  Shows controls for environments
//

import SwiftUI

struct EnvironmentsControlView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text("Environments")
                .font(.headline)
            HStack(spacing: 5) {
                Button(action: {}, label: {
                    Image(systemName: "plus.circle.fill")
                        .font(.system(size: 40))
                        .foregroundStyle(.white, .gray.opacity(0.3))
                })
                .offset(x: -2)
                Divider()
                    .frame(height: 48)
                    .offset(x: -3)
                ZStack {
                    RoundedRectangle(cornerRadius: 25.0)
                        .frame(width: 150, height: 40)
                        .opacity(0.25)
                    ZStack {
                        Circle()
                            .frame(width: 40, height: 40)
                        Image(systemName: "digitalcrown.horizontal.arrow.counterclockwise.fill")
                            .imageScale(.large)
                            .foregroundStyle(Color(UIColor.systemBackground))
                    }
                    .offset(x: -55)
                }
            }
        }
    }
}

#Preview {
    EnvironmentsControlView()
}
