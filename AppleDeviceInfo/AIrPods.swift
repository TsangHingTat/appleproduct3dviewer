//
//  AIrPods.swift
//  AppleDeviceInfo
//
//  Created by Hing Tat Tsang on 5/4/2022.
//

import SwiftUI

struct AirPodsView: View {
    var body: some View {
        List {
            Section {
                NavigationLink(destination: ThreeDHView(name: "AirPods MAX Green", title: "AirPods MAX")) {
                    AirPodsMenuNavBar(title: "AirPods MAX (Green)", image: "airpodsmax")
                }
                NavigationLink(destination: ThreeDHView(name: "AirPods MAX Pink", title: "AirPods MAX")) {
                    AirPodsMenuNavBar(title: "AirPods MAX (Pink)", image: "airpodsmax")
                }
                NavigationLink(destination: ThreeDHView(name: "AirPods MAX Silver", title: "AirPods MAX")) {
                    AirPodsMenuNavBar(title: "AirPods MAX (Silver)", image: "airpodsmax")
                }
                NavigationLink(destination: ThreeDHView(name: "AirPods MAX Sky Blue", title: "AirPods MAX")) {
                    AirPodsMenuNavBar(title: "AirPods MAX (Sky Blue)", image: "airpodsmax")
                }
                NavigationLink(destination: ThreeDHView(name: "AirPods MAX Space Gray", title: "AirPods MAX")) {
                    AirPodsMenuNavBar(title: "AirPods MAX (Space Gray)", image: "airpodsmax")
                }
                
            }
            Section {
                NavigationLink(destination: ThreeDHView(name: "AirPods Pro", title: "AirPods Pro")) {
                    AirPodsMenuNavBar(title: "AirPods Pro", image: "airpodspro")
                }
            }
            Section {
                NavigationLink(destination: ThreeDHView(name: "AirPods S3", title: "AirPods (3rd generation)")) {
                    AirPodsMenuNavBar(title: "AirPods (3rd generation)", image: "airpods.gen3")
                }
            }
            
        }
        .navigationTitle("AirPods")
    }
}


struct AirPodsMenuNavBar: View {
    var title: String
    var image: String
    var body: some View {
        HStack {
            VStack(alignment: .center) {
                Image(systemName: image)
                    .font(Font.title)
            }
            .frame(width: 30, height: 30)
            Text(title)
                .font(.headline)
        }
    }
}

struct Previews_AirPods_Previews: PreviewProvider {
    static var previews: some View {
        AirPodsView()
    }
}

