#  Structure swiftUI

```text

setp1: the source code begins by importing the SwiftUI framework

step2: a view defines one or more visual elements that appear somewhere on a screen.
a view is typically made up of other views, creating a view hierarchy.

step3: ContentView implements the computed property body, just like the MyApp' structure does in the previous section
Note: Implementing body is a common pattern that you see throughout your SwiftUI code; 
for instance, when a structure conforms to protocols such as App, Scene, and View.

step4: ContentView contains the swiftUI-provided view VStack, which arranges subviews vertically.
a VStack simultaneously renders any on-or-off-screen views it contains, Using VStack is ideal when you have a small number of subviews, However
if your app needs to display many more subviews, consider using LazyVStack, which only renders the views when the app needs to display them onscreen

step: 5
the first subviews in VStack is Image. a view that display an image.

step: 6
ContentView applies the view modifier imageScale(_:) to the image view to scale the image within the view to relative size Image.Scale.Large

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}


step7: The foregroundColor(_:) modifier adds color to the image view.

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

step:8 The second subview of VStack is Text, a view that displays one or more lines of read-only text.

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

step:9 ContentView applies the padding(_:_:) modifier to the VStack, adding a platform-specific default amount of padding — that is, space — to the edges of the VStack view.

Step 10: When you run the sample app, it displays the scene that contains the view hierarchy described in ContentView.




```

