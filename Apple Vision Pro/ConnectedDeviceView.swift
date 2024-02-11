//
//  ConnectedDeviceView.swift
//  Apple Vision Pro
//
//  Shows connected device name, battery, and options for accessibility or to disconnect.
//

import SwiftUI

struct ConnectedDeviceView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Connected Device")
                .font(.headline)
                .padding(.bottom, 5)
            Text("Demo Vision Pro - 1")
                .font(.subheadline)
            Text("100% \(Image(systemName: "battery.100percent"))")
                .font(.subheadline)
                .foregroundStyle(.secondary)
            Button(action: {}, label: {
                Label("Accessibility", systemImage: "accessibility")
                    .frame(width: 215, height: 55)
                    .background(Color(UIColor.systemGray5))
                    .clipShape(RoundedRectangle(cornerRadius: 15.0))
            })
            .padding(.bottom, 10)
            Button(action: {}, label: {
                Label("Disconnect", systemImage: "rectangle.portrait.and.arrow.forward")
                    .foregroundStyle(.red)
                    .frame(width: 215, height: 55)
                    .background(Color(UIColor.systemGray5))
                    .clipShape(RoundedRectangle(cornerRadius: 15.0))
            })
        }
        .padding(.bottom, 15)
        .padding(.horizontal)
    }
}

#Preview {
    ConnectedDeviceView()
}
