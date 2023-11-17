//
//  ContentView.swift
//  interface
//
//  Created by Gray Clark on 2023-11-16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            //first layer background
            Color.black
                .ignoresSafeArea()
            VStack {
                
                List {
                    Group{
                        ToggleButtonArea(image: "megaphone.fill", name: "Block Ads on Sites", rules: "55096 rules", description: "remove bothersome banners and other types of obtrusive ads on sites", imageBackground:.yellow)
                        ToggleButtonArea(image: "shield.checkered", name: "Block Web Trackers", rules: "22438 rules", description: "remove bothersome banners and other types of obtrusive ads on sites", imageBackground:.red)
                        ToggleButtonArea(image: "cookie", name: "Block Annoyances", rules: "49603 rules", description: "remove bothersome banners and other types of obtrusive ads on sites", imageBackground:.orange)
                        
                    }
                }
        
                }
            .listStyle(.plain)
              
            }
            
        }
    
}
#Preview {
    ContentView()
}
