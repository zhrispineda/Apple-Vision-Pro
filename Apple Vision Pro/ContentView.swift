//
//  ContentView.swift
//  Apple Vision Pro
//
//  Main Screen
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            NavigationStack {
                List {
                    Section(content: {
                        NavigationLink(destination: {}, label: {
                            Label("Orientation", systemImage: "doc")
                        })
                        NavigationLink(destination: {}, label: {
                            Label("Experience", systemImage: "visionpro")
                        })
                    }, header: {
                        Text("Demo")
                            .textCase(nil)
                            .bold()
                            .foregroundStyle(Color(UIColor.label))
                            .font(.headline)
                    })
                    
                    Section(content: {
                        NavigationLink(destination: {}, label: {
                            Label("Fit", systemImage: "ruler")
                        })
                        NavigationLink(destination: {}, label: {
                            Label("Vision", systemImage: "eye")
                        })
                        NavigationLink(destination: {}, label: {
                            Label("Accessibility", systemImage: "accessibility")
                        })
                        NavigationLink(destination: {}, label: {
                            Label("Other", systemImage: "doc")
                        })
                    }, header: {
                        Text("Resources")
                            .textCase(nil)
                            .bold()
                            .foregroundStyle(Color(UIColor.label))
                            .font(.headline)
                    })
                }
                .background(
                    Color(UIColor.quaternaryLabel)
                )
                .scrollContentBackground(.hidden)
                .navigationTitle("Apple Vision Pro")
            }
            VStack(alignment: .leading) {
                VideoPlayerView()
                    .clipShape(RoundedRectangle(cornerRadius: 5.0))
                HStack(spacing: 15) {
                    ZStack {
                        Color(UIColor.secondarySystemBackground)
                        ConnectedDeviceView()
                            .padding(.horizontal)
                    }
                    .frame(width: 250, height: 265)
                    .clipShape(RoundedRectangle(cornerRadius: 15.0))
                    VStack(alignment: .leading, spacing: 15) {
                        ZStack {
                            Color(UIColor.secondarySystemBackground)
                            EnvironmentsControlView()
                        }
                        .frame(width: 250, height: 125)
                        .clipShape(RoundedRectangle(cornerRadius: 15.0))
                        ZStack {
                            Color(UIColor.secondarySystemBackground)
                            VolumeControlView()
                        }
                        .frame(width: 250, height: 125)
                        .clipShape(RoundedRectangle(cornerRadius: 15.0))
                    }
                    
                    // MARK: Bottom Right Buttons
                    VStack(spacing: 20) {
                        Button(action: {}, label: {
                            HStack {
                                Label("Apps", systemImage: "circle.hexagongrid.fill")
                                    .padding(.leading, 20)
                                Spacer()
                            }
                            .font(.headline)
                            .frame(width: 235, height: 50)
                            .background(Color(UIColor.secondarySystemBackground))
                            .clipShape(RoundedRectangle(cornerRadius: 15.0))
                        })
                        Button(action: {}, label: {
                            HStack {
                                Label("Enrollment", systemImage: "scope")
                                    .padding(.leading, 20)
                                Spacer()
                            }
                            .font(.headline)
                            .frame(width: 235, height: 50)
                            .background(Color(UIColor.secondarySystemBackground))
                            .clipShape(RoundedRectangle(cornerRadius: 15.0))
                        })
                        Button(action: {}, label: {
                            HStack {
                                Label("Resume Stream", systemImage: "play.fill")
                                    .padding(.leading, 20)
                                Spacer()
                            }
                            .font(.headline)
                            .frame(width: 235, height: 50)
                            .background(Color(UIColor.secondarySystemBackground))
                            .clipShape(RoundedRectangle(cornerRadius: 15.0))
                        })
                        Button(action: {}, label: {
                            HStack {
                                Label("Passthrough", systemImage: "circle.lefthalf.filled.inverse")
                                    .padding(.leading, 20)
                                Spacer()
                            }
                            .font(.headline)
                            .frame(width: 235, height: 50)
                            .background(Color(UIColor.secondarySystemBackground))
                            .clipShape(RoundedRectangle(cornerRadius: 15.0))
                        })
                    }
                }
                .padding(.top, 15)
            }
            .padding()
            .frame(width: 800)
        }
    }
}

#Preview {
    ContentView()
}
