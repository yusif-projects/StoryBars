[![Follow](https://img.shields.io/github/followers/yusif-projects?style=social)](https://github.com/yusif-projects)
![Star](https://img.shields.io/github/stars/yusif-projects/StoryBars?style=social)
![iOS 13.0+](https://img.shields.io/badge/iOS-13.0%2B-blue.svg)
![Swift 5.5+](https://img.shields.io/badge/Swift-5.5%2B-orange.svg)
[![License](https://img.shields.io/github/license/yusif-projects/StoryBars)](https://github.com/yusif-projects/StoryBars/blob/main/LICENSE)

# StoryBars

A customizable UI element written in Swift that shows multiple animated progress bars similar to Instagram stories.

✅ Supports UIStoryBoard Interface Builder!

✅ Interactive!

<img src="https://github.com/yusif-projects/StoryBars/blob/main/Images%20and%20Gifs/Demo.gif" width="480"/>

# Table of contents
* [🚚 Installation](#installation)
  * [Manually](#installation-1)
  * [Xcode](#installation-2)
* [🏗 Usage](#usage)
* [📝 License](#license)

## 🚚 Installation <a name="installation"></a>

To integrate using Apple's Swift package manager, add the following as a dependency to your `Package.swift`: <a name="installation-1"></a>

```swift
.package(url: "https://github.com/yusif-projects/StoryBars", .upToNextMajor(from: "1.0.0"))
```

Then specify `"StoryBars"` as a dependency of the Target in which you wish to use `StoryBars`. Here's an example `PackageDescription`:

```swift
// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "MyPackage",

    products: [
        .library(name: "MyPackage", targets: ["MyPackage"])
    ],

    dependencies: [
        .package(url: "https://github.com/yusif-projects/StoryBars", .upToNextMajor(from: "1.0.0"))
    ],

    targets: [
        .target(name: "MyPackage", dependencies: ["StoryBars"])
    ]
)
```

### Or you can use Xcode's built-in tools: <a name="installation-2"></a>

- Step 1: Select your project from the ***project navigator***;
- Step 2: Select your project from the ***project and targets list***;
- Step 3: Select ***package dependencies tab***;
- Step 4: Click the `+` button;

<img src="https://github.com/yusif-projects/StoryBars/blob/main/Images%20and%20Gifs/SPM%20Step%201.png" width="500"/>

- Step 5: Type `https://github.com/yusif-projects/StoryBars` in the ***search bar***;
- Step 6: Select `StoryBars` from the ***results list***;
- Step 7: Select `Up to Next Major Version` from the ***dependency rules list***;
- Step 8: Type `1.0.0` in the text field near it;
- Step 9: Select your project from the ***projects list***;
- Step 10: Click the `Add Package` button;

<img src="https://github.com/yusif-projects/StoryBars/blob/main/Images%20and%20Gifs/SPM%20Step%202.png" width="500"/>

- Step 11: Select your target from the ***targets list***;
- Step 12: Click the `Add Package` button.

<img src="https://github.com/yusif-projects/StoryBars/blob/main/Images%20and%20Gifs/SPM%20Step%203.png" width="500"/>

### How to get the latest update:

- Step 13: Right click (or CTRL click) on the `StoryBars` in the ***project navigator***;
- Step 14: Select `Update Package`.

<img src="https://github.com/yusif-projects/StoryBars/blob/main/Images%20and%20Gifs/SPM%20Step%204.png" width="350"/>

## 🏗 Usage <a name="usage"></a>

You can find an [example project](https://github.com/yusif-projects/StoryBars/tree/main/Example%20Project) in this repository that demonstrates the usage of `StoryBars`.

### Example using UIStoryBoard Interface Builder:

- Drag and drop a `UIView` object from the ***object library***;
- In the ***identity inspector*** change the class from `UIView` to `StoryBars`;
- Customize the parameters in the ***attributes inspector***;
- Drag and drop another `UIView` object from the ***object library***;
- In the ***identity inspector*** change the class from `UIView` to `StoryBarsInteractiveView`;
- Connect both the `StoryBars` and `StoryBarsInteractiveView` objects to your controller by creating outlets;
- Assign the `StoryBars` object to `StoryBarsInteractiveView` object's `storyBars` property;
- Add an action that happens when a bar fills up by assigning a body to the `StoryBars` object's `storyEndAction` method.

```swift
class ViewController: UIViewController {
    
    @IBOutlet weak var storyBars: StoryBars!
    @IBOutlet weak var storyBarsInteractiveView: StoryBarsInteractiveView!

    override func viewDidLoad() {
        super.viewDidLoad()

        storyBarsInteractiveView.storyBars = storyBars
        
        storyBars.storyEndAction = { newStoryIndex in
            // Handler
        }
    }

}
```

In the `viewDidAppear()` call the `start()` method of your `StoryBars` object.

```swift
override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)

    storyBars.start()
}
```

## 📝 License  <a name="license"></a>

[Apache](https://choosealicense.com/licenses/apache-2.0)
