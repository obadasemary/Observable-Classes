//
//----------------------------------------------
// Original project: ObservableClassesDev
//
// Follow me on Mastodon: https://iosdev.space/@StewartLynch
// Follow me on Threads: https://www.threads.net/@stewartlynch
// Follow me on Bluesky: https://bsky.app/profile/stewartlynch.bsky.social
// Follow me on X: https://x.com/StewartLynch
// Follow me on LinkedIn: https://linkedin.com/in/StewartLynch
// Email: slynch@createchsol.com
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch
//----------------------------------------------
// Copyright © 2025 CreaTECH Solutions (Stewart Lynch). All rights reserved.

import SwiftUI


struct SixthView: View {
    
    var body: some View {
        NavigationStack {
            VStack {
                ViewOption.fifth.descrView
                IDView()
                Spacer()
            }
            .toolbar {
                Button("Refesh ID",
                       systemImage: "arrow.trianglehead.2.clockwise") {
                    
                }
            }
        }
    }
    
}

struct IDView: View {
    var body: some View {
        Text("Refreshable UUID")
        
    }
}

#Preview {
    SixthView()
}
