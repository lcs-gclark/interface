//
//  toggle button area.swift
//  interface
//
//  Created by Gray Clark on 2023-11-16.
//

import SwiftUI

struct ToggleButtonArea: View {
    let image:String
    let name:String
    let rules:String
    let description:String
    
    //body
    var body: some View {
        VStack {
            HStack {
                ZStack {
                    RoundedRectangle
                    Image(systemName: image)
                        .foregroundColor(.white)
                }
                VStack {
                    Text(name)
                    Text (rules)
                }
            Spacer()
            }
        }
        Text(description)
    }
}

#Preview {
    ToggleButtonArea(image: "megaphone.fill", name: "Block Ads on sites", rules: "55096 rules", description: "remove bothersome banners and other obtrusive ads on sites")
}
