//
//  3DView.swift
//  AppleDeviceInfo
//
//  Created by Hing Tat Tsang on 5/4/2022.
//

import SwiftUI
import SceneKit

struct ThreeDView: View {
    var name: String
    var title: String
    var body: some View {
        SceneView(scene: SCNScene(named: "\(name).usdz"), options: [.autoenablesDefaultLighting])
            .edgesIgnoringSafeArea(.bottom)
        
        
    }
}

struct ThreeDHView: View {
    var name: String
    var title: String
    var body: some View {
//        ScrollView {
//            HStack {
//                Text(title)
//                    .font(.title)
//                    .bold()
//                    .padding()
//                Spacer()
//            }
//            SceneView(scene: SCNScene(named: "\(name).usdz"), options: [.autoenablesDefaultLighting])
//                .edgesIgnoringSafeArea(.bottom)
//                .frame(height: 200)
//            NavigationLink(destination: ThreeD4KView(name: name, title: title)) {
//                Text("View \(title) 3D Model")
//            }
//        }
//        .navigationTitle("")
//        .navigationBarTitleDisplayMode(.inline)
        ThreeD4KView(name: name, title: title)
    }
}

struct ThreeD4KView: View {
    var name: String
    var title: String
    var body: some View {
        VStack {
            Text(title)
                .font(.title)
            SceneView(scene: SCNScene(named: "\(name).usdz"), options: [.autoenablesDefaultLighting,.allowsCameraControl])
                .edgesIgnoringSafeArea(.bottom)
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}


struct ViewView: View {
    var name: String
    var title: String
    var body: some View {
        HStack(alignment: .top, spacing: 0) {
            NavigationLink {
                ThreeDHView(name: name, title: title)
            } label: {
                VStack(alignment: .center) {
                    ThreeDView(name: name, title: title)
                        .frame(width: 155, height: 155)
                        .cornerRadius(5)
                    Text(title)
                        .foregroundColor(.primary)
                        .font(.caption)
                }
                .padding(.leading, 15)
            }
        }
    }
}


