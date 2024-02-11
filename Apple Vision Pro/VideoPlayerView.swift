//
//  VideoPlayerView.swift
//  Apple Vision Pro
//
//  Placeholder video from Apple's developer site
//

import AVKit
import SwiftUI

struct VideoPlayerView: View {
    var body: some View {
        VideoPlayer(player: AVPlayer(url:  URL(string: "https://devstreaming-cdn.apple.com/videos/streaming/examples/img_bipbop_adv_example_ts/master.m3u8")!))
            .frame(height: 400)
    }
}

#Preview {
    VideoPlayerView()
}
