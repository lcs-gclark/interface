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
    let imageBackground:Color
    //body
    var body: some View {
        VStack {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(imageBackground)
                        .frame(width: 30,height: 30)
                    Image(systemName: image)
                        .foregroundColor(.white)
                }
                VStack {
                    Text(name)
                    Text (rules)
                }
            Spacer()
                VStack {
                    Toggle("adblocker", isOn: Binding.constant(true))
                        .labelsHidden()
                    
                }
            }
        }
        Text(description)
    }
}

#Preview {
    ToggleButtonArea(image: "megaphone.fill", name: "Block Ads on sites", rules: "55096 rules", description: "remove bothersome banners and other obtrusive ads on sites", imageBackground:.yellow)
}
