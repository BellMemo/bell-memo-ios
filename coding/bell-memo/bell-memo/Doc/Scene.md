# view hierarchy

```text

step1: The sample defines an entry point using the @main attribute and the structure MyApp, which conforms to the App protocol.
Note: The entry point and MyApp structure are responsible for the start up of the app. Each SwiftUI app has one and only one entry point and main app structure.

```


```text

step2: The MyApp structure implements the computed property body, which returns a scene.
The computed body property can return one or more primary and secondary scenes.

```


```text

In this sample, body returns the primary scene WindowGroup, which describes the view hierarchy of the sample’s main window.

```

```text

import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem {
                        Label("Journal", systemImage: "book")
                    }
                SettingsView()
                    .tabItem {
                        Label("Settings", systemImage: "gear")
                    }
            }
        }
    }
}

```

```text

step4: The root node of the view hierarchy is TabView, a container view that provides tabs that people can use to switch between different subviews.

```


```text

step4: The TabView contains two subviews, ContentView and SettingsView.

```

```text

Step6: Each of these views apply the tabItem(_:) modifier, which tells the TabView the image and text to display in each tab.

```


```text

Step7: When the sample app runs, it displays the view hierarchy described in the WindowGroup scene,
which is a tab interface with two tabs: Journal and Settings.

```
