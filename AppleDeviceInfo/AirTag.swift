//
//  AirTag.swift
//  AppleDeviceInfo
//
//  Created by Hing Tat Tsang on 5/4/2022.
//

import SwiftUI

struct AirTagView: View {
    var body: some View {
        List {
            NavigationLink(destination: ThreeDHView(name: "AirTag", title: "AirTag")) {
                AirTagMenuNavBar(title: "AirTag", image: "airtag")
            }
         
            
        }
        .navigationTitle("AirTag")
    }
}


struct AirTagMenuNavBar: View {
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

struct Previews_AirTag_Previews: PreviewProvider {
    static var previews: some View {
        AirTagView()
    }
}

