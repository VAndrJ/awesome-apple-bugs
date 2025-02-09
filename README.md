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
  - [tvOS](#tvos)
  - [visionOS](#visionos)
- [Overview](#overview)
- [Contributing](#contributing)


## UI Frameworks


### SwiftUI


- [Memory leak](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/MemoryLeakSearchableRefreshableScrollView/README.md) when applying `.searchable` and `.refreshable` modifiers together on a `ScrollView`.
- [Button action](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/ButtonActionNotCancelledDuringScrollInSheet/README.md) is not canceled during scrolling in a sheet and is executed after scrolling completes.
- [Gesture issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/GestureIssueLongPressUpdatingNotCalled/README.md): `.updating` block is not called on `LongPressGesture`.
- [Gesture issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/GestureIssueHighPriorityToListScrolling/README.md): when `DragGesture` is added as a `.highPriorityGesture` to a `List` or `ScrollView`, scrolling stops working.
- [NavigationStack issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/NavigationStackIssuePoppingBackIsPresented/README.md): popping back programmatically doesn't work when using `.navigationDestination(isPresented:)`.
- [NavigationStack issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/NavigationStackIssuePathClearActiveSearchable/README.md): when clearing a path, it does not go back if there was a transition with an active `.searchable`.
- [Sheet issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/SheetIssuePresentationDetentsIgnoredOnReopen/README.md): `.presentationDetents` is ignored if the sheet is reopened after a short period.
- [Sheet issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/SheetIssueStateRestorationMultiplePresented/README.md): if you have multiple `.sheet`s open, when you restore the state, not all of them will be presented, and after that `.sheet` won't be open even manually until you close the previous one.
- [NavigationSplitView issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/NavigationSplitViewToolbarItemDisappearBackground/README.md): toolbar items disappear after the app goes to the background and then returns to the foreground.
- [TabView issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/TabViewIssuePageTabAfterRotation/README.md): wrong tab displayed after rotation when using `.page` style.
- [@State issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/StateIssueSharedBetweenScenes/README.md): the same variable is shared between different scenes.
- [Alert issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/AlertIssueButtonsTintAffectedByModifier/README.md): `.default` and `.cancel` buttons are recolored if alert in a `NavigationStack` that has `.tint` applied (or higher up the Views tree).
- [Animation glitch](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/AnimationGlitchDragAndDrop/README.md) on drag and drop action.


### UIKit


- [Life cycle](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/LifeCyclePushedViewController/README.md) of controllers when the new one is immediately pushed with `animation: true`.
- [Navigation title](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/NavigationTitleQuotationMarksWhitespace/README.md) is displayed in quotation marks `" "` if a whitespace is specified as the title.


## Swift


- [Crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CrashTypedThrowsObservableObject/README.md) occurs when using a typed throws in a closure variable within an `ObservableObject`.
- [Crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CrashNotificationCenterClosureSwift6/README.md) in Swift 6 language mode when using the closure-based version of the `UNUserNotificationCenter.requestAuthorization` function.
- [Compilation error](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CompilationErrorObservableClassNameMember/README.md) if `Observable` class name is `Member`.
- [Compilation error](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CompilationErrorPassingFunctionAsAnArgument/README.md) when passing a function isolated to an actor as an argument.


## Xcode


- [Compilation error](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CompilationErrorObservableClassNameMember/README.md) if `Observable` class name is `Member`.
- [Compilation error](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CompilationErrorPassingFunctionAsAnArgument/README.md) when passing a function isolated to an actor as an argument.
- [Entry macro issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/EntryMacroComputedProperty/README.md): generated variable `defaultValue` is computed property if variable type is explicitly specified.


## OS


### iOS


- [Memory leak](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/MemoryLeakSearchableRefreshableScrollView/README.md) when applying `.searchable` and `.refreshable` modifiers together on a `ScrollView`.
- [Crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CrashTypedThrowsObservableObject/README.md) occurs when using a typed throws in a closure variable within an `ObservableObject`.
- [Crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CrashNotificationCenterClosureSwift6/README.md) in Swift 6 language mode when using the closure-based version of the `UNUserNotificationCenter.requestAuthorization` function.
- [Button action](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/ButtonActionNotCancelledDuringScrollInSheet/README.md) is not canceled during scrolling in a sheet and is executed after scrolling completes.
- [Gesture issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/GestureIssueLongPressUpdatingNotCalled/README.md): `.updating` block is not called on `LongPressGesture`.
- [Gesture issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/GestureIssueHighPriorityToListScrolling/README.md): when `DragGesture` is added as a `.highPriorityGesture` to a `List` or `ScrollView`, scrolling stops working.
- [NavigationStack issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/NavigationStackIssuePoppingBackIsPresented/README.md): popping back programmatically doesn't work when using `.navigationDestination(isPresented:)`.
- [NavigationStack issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/NavigationStackIssuePathClearActiveSearchable/README.md): when clearing a path, it does not go back if there was a transition with an active `.searchable`.
- [Sheet issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/SheetIssuePresentationDetentsIgnoredOnReopen/README.md): `.presentationDetents` is ignored if the sheet is reopened after a short period.
- [Sheet issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/SheetIssueStateRestorationMultiplePresented/README.md): if you have multiple `.sheet`s open, when you restore the state, not all of them will be presented, and after that `.sheet` won't be open even manually until you close the previous one.
- [TabView issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/TabViewIssuePageTabAfterRotation/README.md): wrong tab displayed after rotation when using `.page` style.
- [@State issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/StateIssueSharedBetweenScenes/README.md): the same variable is shared between different scenes.
- [Alert issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/AlertIssueButtonsTintAffectedByModifier/README.md): `.default` and `.cancel` buttons are recolored if alert in a `NavigationStack` that has `.tint` applied (or higher up the Views tree).
- [Animation glitch](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/AnimationGlitchDragAndDrop/README.md) on drag and drop action.
- [Navigation title](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/NavigationTitleQuotationMarksWhitespace/README.md) is displayed in quotation marks `" "` if a whitespace is specified as the title.


### iPadOS


- [Crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CrashTypedThrowsObservableObject/README.md) occurs when using a typed throws in a closure variable within an `ObservableObject`.
- [Crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CrashNotificationCenterClosureSwift6/README.md) in Swift 6 language mode when using the closure-based version of the `UNUserNotificationCenter.requestAuthorization` function.
- [Gesture issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/GestureIssueLongPressUpdatingNotCalled/README.md): `.updating` block is not called on `LongPressGesture`.
- [Gesture issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/GestureIssueHighPriorityToListScrolling/README.md): when `DragGesture` is added as a `.highPriorityGesture` to a `List` or `ScrollView`, scrolling stops working.
- [NavigationSplitView issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/NavigationSplitViewToolbarItemDisappearBackground/README.md): toolbar items disappear after the app goes to the background and then returns to the foreground.
- [TabView issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/TabViewIssuePageTabAfterRotation/README.md): wrong tab displayed after rotation when using `.page` style.
- [@State issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/StateIssueSharedBetweenScenes/README.md): the same variable is shared between different scenes.
- [Alert issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/AlertIssueButtonsTintAffectedByModifier/README.md): `.default` and `.cancel` buttons are recolored if alert in a `NavigationStack` that has `.tint` applied (or higher up the Views tree).
- [Navigation title](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/NavigationTitleQuotationMarksWhitespace/README.md) is displayed in quotation marks `" "` if a whitespace is specified as the title.


### macOS


- [@State issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/StateIssueSharedBetweenScenes/README.md): the same variable is shared between different scenes.


### watchOS


- [Crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CrashTypedThrowsObservableObject/README.md) occurs when using a typed throws in a closure variable within an `ObservableObject`.
- [@State issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/StateIssueSharedBetweenScenes/README.md): the same variable is shared between different scenes.


### tvOS


- [@State issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/StateIssueSharedBetweenScenes/README.md): the same variable is shared between different scenes.


### visionOS


- [Crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CrashTypedThrowsObservableObject/README.md) occurs when using a typed throws in a closure variable within an `ObservableObject`.
- [@State issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/StateIssueSharedBetweenScenes/README.md): the same variable is shared between different scenes.


## Overview


### [Memory leak](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/MemoryLeakSearchableRefreshableScrollView/README.md) when applying `.searchable` and `.refreshable` modifiers together on a `ScrollView`.


A video demonstrating how it behaves on iOS 17.2 without a memory leak and on iOS 18.2 with a memory leak.


https://github.com/user-attachments/assets/56ebfc9c-8afc-43be-8f7b-cf8699219853


---


### [Crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CrashNotificationCenterClosureSwift6/README.md) in Swift 6 language mode when using the closure-based version of the `UNUserNotificationCenter.requestAuthorization` function.


Images with the result.


![error](https://raw.githubusercontent.com/VAndrJ/awesome-apple-bugs/master/Bugs/CrashNotificationCenterClosureSwift6/Resources/error.jpeg)
![solution](https://raw.githubusercontent.com/VAndrJ/awesome-apple-bugs/master/Bugs/CrashNotificationCenterClosureSwift6/Resources/solution.jpeg)


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


A video demonstrating how it behaves on iOS 17 and iOS 18.


https://github.com/user-attachments/assets/53d8ad16-e00b-467d-8ecd-b7ff1dcee5c2


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


### [Sheet issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/SheetIssueStateRestorationMultiplePresented/README.md): if you have multiple `.sheet`s open, when you restore the state, not all of them will be presented, and after that `.sheet` won't be open even manually until you close the previous one.


A video demonstrating how it behaves.


https://github.com/user-attachments/assets/c857e7d2-da21-4163-a261-720f471b09a5


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


### [NavigationSplitView issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/NavigationSplitViewToolbarItemDisappearBackground/README.md): toolbar items disappear after the app goes to the background and then returns to the foreground.


A video demonstrating how it behaves on iOS 18.


https://github.com/user-attachments/assets/ac02a63e-da70-4f7a-807c-276550a3a15d


---


### [Entry macro issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/EntryMacroComputedProperty/README.md): generated variable `defaultValue` is computed property if variable type is explicitly specified.


Image comparing the code generated by the macro


![entry](https://raw.githubusercontent.com/VAndrJ/awesome-apple-bugs/master/Bugs/EntryMacroComputedProperty/Resources/entry.jpg)


---


- [TabView issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/TabViewIssuePageTabAfterRotation/README.md): wrong tab displayed after rotation when using `.page` style.


A video demonstrating how it behaves on iOS 15.


https://github.com/user-attachments/assets/3f399638-ee14-40df-9d39-42848cf601fb


---


### [@State issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/StateIssueSharedBetweenScenes/README.md): the same variable is shared between different scenes.


A video demonstrating how it behaves on iPadOS 17.4 and 17.5.


https://github.com/user-attachments/assets/fab3cc1e-9750-47f7-a697-f84d333cd69d


---


### [Alert issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/AlertIssueButtonsTintAffectedByModifier/README.md): `.default` and `.cancel` buttons are recolored if alert in a `NavigationStack` that has `.tint` applied (or higher up the Views tree).


Video showing how it works on iOS 18.1 and iOS 18.2.


https://github.com/user-attachments/assets/ae982f4e-ef68-4544-911a-ea9dbf506ca8


---


### [Animation glitch](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/AnimationGlitchDragAndDrop/README.md) on drag and drop action.


A video showing how it works on iOS 18.0.


https://github.com/user-attachments/assets/c4c8cdb1-4539-44e1-8069-e52e61b95f34


---


### [Navigation title](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/NavigationTitleQuotationMarksWhitespace/README.md) is displayed in quotation marks `" "` if a whitespace is specified as the title.


Comparison images on iOS 18 and earlier storyboard/code.


![storyboard](https://raw.githubusercontent.com/VAndrJ/awesome-apple-bugs/master/Bugs/NavigationTitleQuotationMarksWhitespace/Resources/storyboard.jpeg)
![code](https://raw.githubusercontent.com/VAndrJ/awesome-apple-bugs/master/Bugs/NavigationTitleQuotationMarksWhitespace/Resources/code.jpeg)


---


## Contributing


Contributions welcome! See the [guidelines](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/.github/CONTRIBUTING.md).
