//
//  toggle button area.swift
//  interface
//
//  Created by Gray Clark on 2023-11-16.
//

import SwiftUI
let mediumGray = Color(
    hue: 0/360.0,
    saturation: 0.0,
    brightness: 0.8
)
struct ToggleButtonArea: View {
    let image:String
    let name:String
    let rules:String
    let description:String
    let imageBackground:Color
    //body
    var body: some View {
        ZStack {
            //first layer background
            Color.black
                .ignoresSafeArea()
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
                            .font(.title)
                            .bold()
                            .foregroundStyle(.white)
                        Text (rules)
                            .foregroundStyle(mediumGray)
                    }
                    Spacer()
                    VStack {
                        Toggle("adblocker", isOn: Binding.constant(true))
                            .labelsHidden()
                        
                    }
                }
                
                Text(description)
                    .foregroundStyle(mediumGray)
            }
        }
    }
    
}

#Preview {
    ToggleButtonArea(image: "megaphone.fill", name: "Block Ads on Sites", rules: "55096 rules", description: "remove bothersome banners and other obtrusive ads on sites", imageBackground:.yellow)
}
