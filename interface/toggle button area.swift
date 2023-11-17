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
    brightness: 0.6
)
struct ToggleButtonArea: View {
    let image:String
    let name:String
    let rules:String
    let description:String
    let imageBackground:Color
    //body
    var body: some View {
        
        HStack{
            
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
                        HStack {
                            Text(name)
                                .font(.title2)
                                .bold()
                                .foregroundStyle(.white)
                            Spacer()
                        }
                        HStack {
                            Text (rules)
                                .foregroundStyle(mediumGray)
                            Spacer()
                        }
                    }
                    Spacer()
                    Toggle("adblocker", isOn: Binding.constant(true))
                        .labelsHidden()
                }
                
                Text(description)
                    .foregroundStyle(mediumGray)
            }
            
            Image(systemName: "chevron.right")
                .foregroundStyle(mediumGray)
            
        }
        
        
    }
}



#Preview {
    ToggleButtonArea(image: "megaphone.fill", name: "Block Ads on Sites", rules: "55096 rules", description: "remove bothersome banners and other types of obtrusive ads on sites", imageBackground:.yellow)
}

