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
  - [visionOS](#visionos)
- [Overview](#overview)


## UI Frameworks


### SwiftUI


- [Memory leak](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/MemoryLeakSearchableRefreshableScrollView/README.md) when applying `.searchable` and `.refreshable` modifiers together on a `ScrollView`.
- [Animation glitch](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/AnimationGlitchDragAndDrop/README.md) on drag and drop action.
- [Button action](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/ButtonActionNotCancelledDuringScrollInSheet/README.md) is not canceled during scrolling in a sheet and is executed after scrolling completes.
- [Gesture issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/GestureIssueLongPressUpdatingNotCalled/README.md): `.updating` block is not called on `LongPressGesture`.
- [Gesture issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/GestureIssueHighPriorityToListScrolling/README.md): when `DragGesture` is added as a `.highPriorityGesture` to a `List` or `ScrollView`, scrolling stops working.
- [NavigationStack issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/NavigationStackIssuePoppingBackIsPresented/README.md): popping back programmatically doesn't work when using `.navigationDestination(isPresented:)`.
- [NavigationStack issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/NavigationStackIssuePathClearActiveSearchable/README.md): when clearing a path, it does not go back if there was a transition with an active `.searchable`.
- [Sheet issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/SheetIssuePresentationDetentsIgnoredOnReopen/README.md): `.presentationDetents` is ignored if the sheet is reopened after a short period.


### UIKit


- [Life cycle](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/LifeCyclePushedViewController/README.md) of controllers when the new one is immediately pushed with `animation: true`.


## Swift


- [Crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CrashTypedThrowsObservableObject/README.md) occurs when using a typed throws in a closure variable within an `ObservableObject`.
- [Compilation error](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CompilationErrorObservableClassNameMember/README.md) if `Observable` class name is `Member`.
- [Compilation error](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CompilationErrorPassingFunctionAsAnArgument/README.md) when passing a function isolated to an actor as an argument.


## Xcode


- [Compilation error](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CompilationErrorObservableClassNameMember/README.md) if `Observable` class name is `Member`.
- [Compilation error](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CompilationErrorPassingFunctionAsAnArgument/README.md) when passing a function isolated to an actor as an argument.


## OS


### iOS


- [Memory leak](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/MemoryLeakSearchableRefreshableScrollView/README.md) when applying `.searchable` and `.refreshable` modifiers together on a `ScrollView`.
- [Crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CrashTypedThrowsObservableObject/README.md) occurs when using a typed throws in a closure variable within an `ObservableObject`.
- [Animation glitch](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/AnimationGlitchDragAndDrop/README.md) on drag and drop action.
- [Button action](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/ButtonActionNotCancelledDuringScrollInSheet/README.md) is not canceled during scrolling in a sheet and is executed after scrolling completes.
- [Gesture issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/GestureIssueLongPressUpdatingNotCalled/README.md): `.updating` block is not called on `LongPressGesture`.
- [Gesture issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/GestureIssueHighPriorityToListScrolling/README.md): when `DragGesture` is added as a `.highPriorityGesture` to a `List` or `ScrollView`, scrolling stops working.
- [NavigationStack issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/NavigationStackIssuePoppingBackIsPresented/README.md): popping back programmatically doesn't work when using `.navigationDestination(isPresented:)`.
- [NavigationStack issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/NavigationStackIssuePathClearActiveSearchable/README.md): when clearing a path, it does not go back if there was a transition with an active `.searchable`.
- [Sheet issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/SheetIssuePresentationDetentsIgnoredOnReopen/README.md): `.presentationDetents` is ignored if the sheet is reopened after a short period.


### iPadOS


- [Crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CrashTypedThrowsObservableObject/README.md) occurs when using a typed throws in a closure variable within an `ObservableObject`.
- [Gesture issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/GestureIssueLongPressUpdatingNotCalled/README.md): `.updating` block is not called on `LongPressGesture`.
- [Gesture issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/GestureIssueHighPriorityToListScrolling/README.md): when `DragGesture` is added as a `.highPriorityGesture` to a `List` or `ScrollView`, scrolling stops working.


### macOS


### watchOS


- [Crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CrashTypedThrowsObservableObject/README.md) occurs when using a typed throws in a closure variable within an `ObservableObject`.


### visionOS


- [Crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CrashTypedThrowsObservableObject/README.md) occurs when using a typed throws in a closure variable within an `ObservableObject`.


## Overview


### [Memory leak](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/MemoryLeakSearchableRefreshableScrollView/README.md) when applying `.searchable` and `.refreshable` modifiers together on a `ScrollView`.


A video demonstrating how it behaves on iOS 17.2 without a memory leak and on iOS 18.2 with a memory leak.


https://github.com/user-attachments/assets/56ebfc9c-8afc-43be-8f7b-cf8699219853


---


### [Button action](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/ButtonActionNotCancelledDuringScrollInSheet/README.md) is not canceled during scrolling in a sheet and is executed after scrolling completes.

A video demonstrating how it works on iOS 17 and iOS 18.


https://github.com/user-attachments/assets/028762ed-958b-485a-9eb8-bc108245a920


---


### [Gesture issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/GestureIssueLongPressUpdatingNotCalled/README.md): `.updating` block is not called on `LongPressGesture`.


A video demonstrating how it behaves on iOS 18 and iOS 17.


https://github.com/user-attachments/assets/d218c595-fcb7-498d-b2d0-39e3d4f007e6


---


### [Gesture issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/GestureIssueHighPriorityToListScrolling/README.md): when `DragGesture` is added as a `.highPriorityGesture` to a `List` or `ScrollView`, scrolling stops working.


A video demonstrating how it behaves on iOS 18.


upload video.


---


### [NavigationStack issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/NavigationStackIssuePoppingBackIsPresented/README.md): popping back programmatically doesn't work when using `.navigationDestination(isPresented:)`.


A video demonstrating how it behaves on iOS 16 and iOS 17.


https://github.com/user-attachments/assets/0b98cf13-89b6-4200-8707-13f087c50684


---


### [NavigationStack issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/NavigationStackIssuePathClearActiveSearchable/README.md): when clearing a path, it does not go back if there was a transition with an active `.searchable`.


A video demonstrating how it behaves on iOS 17 and iOS 18.


https://github.com/user-attachments/assets/9d89f6c4-20c1-4d19-a02b-0acb03866d7e


---


### [Sheet issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/SheetIssuePresentationDetentsIgnoredOnReopen/README.md): `.presentationDetents` is ignored if the sheet is reopened after a short period.


A video demonstrating how it behaves on iOS 18.


https://github.com/user-attachments/assets/9b27c669-5038-4b6d-8d27-39ca18de218d


---


### [Animation glitch](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/AnimationGlitchDragAndDrop/README.md) on drag and drop action.


A video showing how it works on iOS 18.0.


https://github.com/user-attachments/assets/c4c8cdb1-4539-44e1-8069-e52e61b95f34


---


### [Life cycle](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/LifeCyclePushedViewController/README.md) of controllers when the new one is immediately pushed with `animation: true`.


Comparison images on iOS 18 and earlier.


![iOS18 example](https://raw.githubusercontent.com/VAndrJ/awesome-apple-bugs/master/Bugs/LifeCyclePushedViewController/Resources/iOS18.jpeg)![iOS17 example](https://raw.githubusercontent.com/VAndrJ/awesome-apple-bugs/master/Bugs/LifeCyclePushedViewController/Resources/iOS17.jpeg)


---


### [Crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CrashTypedThrowsObservableObject/README.md) occurs when using a typed throws in a closure variable within an `ObservableObject`.


Video showing how it works up to but not including iOS 18.0.


https://github.com/user-attachments/assets/165ddf0c-74f9-4022-9a36-494f1a13adf5


---


### [Compilation error](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CompilationErrorObservableClassNameMember/README.md) if `Observable` class name is `Member`.


![Example](https://raw.githubusercontent.com/VAndrJ/awesome-apple-bugs/master/Bugs/CompilationErrorObservableClassNameMember/Resources/error.jpeg)


---



### [Compilation error](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CompilationErrorPassingFunctionAsAnArgument/README.md) when passing a function isolated to an actor as an argument.


![example](https://raw.githubusercontent.com/VAndrJ/awesome-apple-bugs/master/Bugs/CompilationErrorPassingFunctionAsAnArgument/Resources/error.jpeg)


---


## Contributing


Contributions welcome! See the [guidelines](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/.github/CONTRIBUTING.md).
