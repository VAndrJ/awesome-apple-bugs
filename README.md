# Awesome Apple Bugs


A list of awesome bugs with SwiftUI, Swift, etc. Includes code examples and possible workarounds to help developers navigate common pitfalls.


## Contents (tags):


- [UI Frameworks](#ui-frameworks)
  - [SwiftUI](#swiftui)
  - [UIKit](#uikit)
- [Swift](#swift)
- [Xcode](#xcode)
- [OS](#os)
  - [iOS](#ios)
  - [iPadOS](#ipados)
  - [macOS](#macos)
  - [watchOS](#watchos)
  - [visionOS](#visionOS)


## UI Frameworks


### SwiftUI


- [Memory leak](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/MemoryLeakSearchableRefreshableScrollView/README.md) when applying `.searchable` and `.refreshable` modifiers together on a `ScrollView`.
- [Animation glitch](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/AnimationGlitchDragAndDrop/README.md) on drag and drop action.
- [Button action](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/ButtonActionNotCancelledDuringScrollInSheet/README.md) is not canceled during scrolling in a sheet and is executed after scrolling completes.
- [Gesture issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/GestureIssueLongPressUpdatingNotCalled/README.md): `.updating` block is not called on `LongPressGesture`.
- [NavigationStack issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/NavigationStackIssuePoppingBackIsPresented/README.md): popping back programmatically doesn't work when using `.navigationDestination(isPresented:)`.


### UIKit


- [Life cycle](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/LifeCyclePushedViewController/README.md) of controllers when the new one is immediately pushed with `animation: true`.


## Swift


- [Crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CrashTypedThrowsObservableObject/README.md) occurs when using a typed throws in a closure variable within an `ObservableObject`.
- [Compilation error](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CompilationErrorObservableClassNameMember/README.md) if `Observable` class name is `Member`.


## Xcode


- [Compilation error](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CompilationErrorObservableClassNameMember/README.md) if `Observable` class name is `Member`.


## OS


### iOS


- [Memory leak](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/MemoryLeakSearchableRefreshableScrollView/README.md) when applying `.searchable` and `.refreshable` modifiers together on a `ScrollView`.
- [Crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CrashTypedThrowsObservableObject/README.md) occurs when using a typed throws in a closure variable within an `ObservableObject`.
- [Animation glitch](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/AnimationGlitchDragAndDrop/README.md) on drag and drop action.
- [Button action](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/ButtonActionNotCancelledDuringScrollInSheet/README.md) is not canceled during scrolling in a sheet and is executed after scrolling completes.


### iPadOS


- [Crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CrashTypedThrowsObservableObject/README.md) occurs when using a typed throws in a closure variable within an `ObservableObject`.


### macOS


### watchOS


- [Crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CrashTypedThrowsObservableObject/README.md) occurs when using a typed throws in a closure variable within an `ObservableObject`.


### visionOS


- [Crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CrashTypedThrowsObservableObject/README.md) occurs when using a typed throws in a closure variable within an `ObservableObject`.


## Contributing


Contributions welcome! See the [guidelines](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/.github/CONTRIBUTING.md).
