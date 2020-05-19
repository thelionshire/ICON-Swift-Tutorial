## Part 1 or 4: Getting Started With Swift and ICON

# Introduction to Swift:

Swift is a general purpose programming language that was first released in 2014. Today Swift powers over 1 billion iOS devices, as well as other mobile and desktop applications and services. Swift is a safe, fast, and expressive language that is meant to be a replacement for C-based languages. Swift was developed by Apple, however, it was made open-source under the Apache License in 2015. Swift has quickly climbed the ranks in terms of popularity of programming languages. As of May 2020, Swift was ranked #11 in the TIOBE index (up from #18 in May 2019). Apple releases a new and improved version of Swift each year, with Swift 5 being the most recent.

![](https://github.com/UbikCapital/ICON-Swift-Tutorials/blob/master/Part%201%20Getting%20Started/images/1-new-xcode-project.png)

# Getting Started with Swift

Due to the open-source nature of the language, there are multiple ways to program and compile in Swift, however, the most popular is to use Apple’s Xcode IDE for developing applications to run on Apple devices. Xcode runs on macOS and is available for download from the Apple App Store. You can search for Xcode in the App Store, or download it [here](https://apps.apple.com/us/app/xcode/id497799835?mt=12). Xcode will guide you through the installation.

Development resources, such as documentation, libraries, and tutorials can be found on [Apple’s developer webpage](https://developer.apple.com/swift/resources/). Anyone can download Xcode and begin programming, however, actually publishing apps to the Apple App Store requires a special Apple Development account, which is available for $99.99 a year.

Upon starting Xcode, you have three options.

1. Get started with a playground - This is for learning purposes, in which you can experiment with code and explore different areas of the Swift language:
2. Create a new Xcode project - This allows the developer to start a new project for a multitude of different applications. 
3. Clone an existing project - This option is used to work off an existing project via a Git repository. 

# How to Use the ICON Swift SDK

The opportunities for creation are endless. Depending on your programming experience, we recommend going through tutorials via the Apple developer webpage to learn the basics of the language. Then you can explore the Swift playground before embarking on the creation of complex projects.  

For this tutorial, we will create a new project and select a single view application for simplicity purposes (although any type will work). We name our project SwiftTutorial (the workspace is shown below).

![](https://github.com/UbikCapital/ICON-Swift-Tutorials/blob/master/Part%201%20Getting%20Started/images/1-import-iconsdk.png)

# How to Integrate the ICON SDK into Xcode

You need to include the ICON Swift SDK in order to use ICON functionality directly in your Swift project code. We will use [CocoaPods](https://cocoapods.org), a dependency manager for Swift, to install the ICON Swift SDK (named ICONKit). Installation instructions for installing CocoaPods can be found on the CocoaPods webpage. You can also search the CocoaPods webpage to find different libraries. If you search for ICONKit, you will be linked to the [ICON SDK Github page](https://github.com/icon-project/ICONKit).

Using Terminal, navigate to your Swift project main directory. Once there, run the command `pod init` to create a Podfile with the proper compilation targets, according to your project. Add the latest version of ICONKit to the Podfile by adding: `pod ‘ICONKit’, ‘~> 0.4.3’` (this adds ICONKit version 0.4.3. You can find the latest version of ICONKit by going to the ICON SDK Github page). Your Podfile should look similar to the below image (note that for simplicity we exclude the test targets)

![](https://github.com/UbikCapital/ICON-Swift-Tutorials/blob/master/Part%201%20Getting%20Started/images/1-import-iconkit.png)

Now run: `pod install` to install the dependent libraries. You will see the dependencies downloaded and installed, as shown below.

![](https://github.com/UbikCapital/ICON-Swift-Tutorials/blob/master/Part%201%20Getting%20Started/images/1-install-dependencies.png)

After installing the pod, you will notice a difference when you navigate to your project main directory. There is a new ‘.xcworkspace’ file extension for the project. Open this file to open the main project and pod dependencies. In Xcode, you will now see your main project (SwiftTutorial in our case) as well as Pods (as shown below).

![](https://github.com/UbikCapital/ICON-Swift-Tutorials/blob/master/Part%201%20Getting%20Started/images/1-swift-project.png)

That’s it! You have successfully created a project and integrated the ICON Swift SDK. Now you can add `import ICONKit` to your Swift files in your project to add ICON functionality to your project.
