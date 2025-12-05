//
//----------------------------------------------
// Original project: Observable Classes
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

enum ViewOption: CaseIterable, Identifiable, View {
    case first, second, third, fourth, fifth, sixth, seventh
    var id: Self { self }
    
    var title: String {
        switch self {
        case .first:
            "Example 1"
        case .second:
            "Example 2"
        case .third:
            "Example 3"
        case .fourth:
            "Example 4"
        case .fifth:
            "Example 5"
        case .sixth:
            "Example 6"
        case .seventh:
            "Example 7"
        }
    }
    
    var body: some View {
        switch self {
        case .first:
            FirstView()
        case .second:
            SecondView()
        case .third:
            ThirdView()
        case .fourth:
            FourthView()
        case .fifth:
            FifthView()
        case .sixth:
            SixthView()
        case .seventh:
            SeventhView()
        }
    }
    
    
    var desc: String {
        switch self {
        case .first:
            """
            When an **Observable Class** is initialized as a **stored property** in the view,
            the view refreshes as the model properties change.
            """
        case .second:
            """
            Updating the value of a **local @State variable** will **NOT cause reinitization** of an observable class that was initialized in the view as a **local stored property**.
            """
        case .third:
            """
            If the the **Observable Class** is initialized as a **stored property** in a subview and a **local @State variable is updated**, the view will refresh causing the subview to refresh and the **stored observable class will be reinitialized**, resetting the values.
            """
        case .fourth:
            """
            If the the **Observable Class** is initialized as a **@State property** in a subview and a **local @State variable is updated**, the view will refresh causing the subview to refresh and the **observable class will be reinitialized**, but the **state values are maintained**.
            """
        case .fifth:
            """
            You can defer creating the **@State Observable class** by creating it as an **Optional** property and initializing it in a **task** modifier.
            This will cause the initializer to **only run once** as the local state property changes.
            """
        case .sixth:
            """
            Deferring observable class creation lets us configure it based on a **value passed into the view**.
            It's important to use the **task() modifier with the id parameter**, so that the task runs again when that value changes. 
            """
        case .seventh:
            """
            You can initialize a **@State Observable class** in the **App** struct and inject into the **Environment**.
            Each window in a **scene** accessing the instance from the environment gets its **own fresh copy of the state.**
            """
        }
        
    }
    var descrView: some View {
        VStack {
            Text(.init(desc))
                .font(.title)
                .padding()
                .background(.gray.opacity(0.5), in: .rect(cornerRadius: 10))
            Link("Nilcoalescing Blog", destination: URL(string: "https://nilcoalescing.com/blog/InitializingObservableClassesWithinTheSwiftUIHierarchy/")!)
        }
            .padding()
        
    }
}
