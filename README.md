# Awesome Apple Bugs


A list of awesome bugs with SwiftUI, Swift, etc. Includes code examples and possible workarounds to help developers navigate common pitfalls.


## Contents (tags):


- [UI Frameworks](#ui-frameworks)
  - [SwiftUI](#swiftui)
  - [UIKit](#uikit)
- [Swift](#swift)
- [Xcode](#xcode)
- [SwiftData](#swiftdata)
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


- [ForEach crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/ForEachCrashOnElementdeletionBindingInit/): when using the `Binding` variant of the init, after the animation of removing the last element has completed.
- [Popover crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/PopoverCrashAfterDeviceRotation/) after going to background and device rotation.
- [Memory leak](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/MemoryLeakSearchableRefreshableScrollView/) when applying `.searchable` and `.refreshable` modifiers together on a `ScrollView`.
- [Button action](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/ButtonActionNotCancelledDuringScrollInSheet/) is not canceled during scrolling in a sheet and is executed after scrolling completes.
- [ScrollViewReader issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/ScrollViewReaderEmptyCellsOnScrollTo/) List returns empty cells when scrolling with scrollTo.
- [Gesture issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/GestureIssueLongPressUpdatingNotCalled/): `.updating` block is not called on `LongPressGesture`.
- [Gesture issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/GestureIssueHighPriorityToListScrolling/): when `DragGesture` is added as a `.highPriorityGesture` to a `List` or `ScrollView`, scrolling stops working.
- [NavigationStack issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/NavigationStackIssuePoppingBackIsPresented/): popping back programmatically doesn't work when using `.navigationDestination(isPresented:)`.
- [NavigationStack issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/NavigationStackIssuePathClearActiveSearchable/): when clearing a path, it does not go back if there was a transition with an active `.searchable`.
- [Sheet issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/SheetIssuePresentationDetentsIgnoredOnReopen/): `.presentationDetents` is ignored if the sheet is reopened after a short period.
- [Sheet issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/SheetIssueStateRestorationMultiplePresented/): if you have multiple `.sheet`s open, when you restore the state, not all of them will be presented, and after that `.sheet` won't be open even manually until you close the previous one.
- [NavigationSplitView issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/NavigationSplitViewToolbarItemDisappearBackground/): toolbar items disappear after the app goes to the background and then returns to the foreground.
- [TabView issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/TabViewIssuePageTabAfterRotation/): wrong tab displayed after rotation when using `.page` style.
- [@State issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/StateIssueSharedBetweenScenes/): the same variable is shared between different scenes.
- [PhaseAnimator crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/PhaseAnimatorCrashOnViewClose/): when closing the presented view or popping the pushed view on which it is (or 100% CPU load iOS 17.0).
- [Lifecycle issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/LifeCycleIssueWhenSwitchingViewsWithNavigationStack/): `onAppear`, `onDisappear`, `task` are called again when the `NavigationStack` with a View is replaced by another View.
- [Alert issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/AlertIssueButtonsTintAffectedByModifier/): `.default` and `.cancel` buttons are recolored if alert in a `NavigationStack` that has `.tint` applied (or higher up the Views tree).
- [Alert issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/AlertDisabledButtonIssue/): `.disabled` modifier does not work correctly up to iOS 18.
- [List issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/ListEditButtonOnlyWorksSecondTime/): the edit button only works the second time.
- [Popover issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/PopoverArrowEdgeNotRespected/): `arrowEdge` value is not respected.
- [Animation stops working](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/AnimationIssueInLazyContainers/) in Lazy containers (Stacks, Grids) when navigating to the next screen and returning.
- [Animation glitch](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/AnimationGlitchDragAndDrop/) on drag and drop action.


### UIKit


- [Life cycle](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/LifeCyclePushedViewController/) of controllers when the new one is immediately pushed with `animation: true`.
- [UIBezierPath issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/UIBezierPathIssueCornerRadius/): `cornerRadius` is incorrect for `roundedRect` when it exceeds ~65.5% of half of `min(width, height)`.
- [Navigation title](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/NavigationTitleQuotationMarksWhitespace/) is displayed in quotation marks `" "` if a whitespace is specified as the title.


## Swift


- [Crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CrashTypedThrowsObservableObject/) occurs when using a typed throws in a closure variable within an `ObservableObject`.
- [Crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CrashNotificationCenterClosureSwift6/) in Swift 6 language mode when using the closure-based version of the `UNUserNotificationCenter.requestAuthorization` function.
- [Crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/DocumentsAppCrashInSwift6LanguageMode/) in Swift 6 language in default "Document App" template.
- [Compilation error](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CompilationErrorObservableClassNameMember/) if `Observable` class name is `Member`.
- [Compilation error](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CompilationErrorPassingFunctionAsAnArgument/) when passing a function isolated to an actor as an argument.


## Xcode


- [Compilation error](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CompilationErrorObservableClassNameMember/) if `Observable` class name is `Member`.
- [Compilation error](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CompilationErrorPassingFunctionAsAnArgument/) when passing a function isolated to an actor as an argument.
- [Entry macro issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/EntryMacroComputedProperty/): generated variable `defaultValue` is a computed property if the variable type is explicitly specified, but a stored property if the variable type is not specified explicitly.
- [Code completion issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CodeCompletionIssueAsyncThrowsInit/): incorrect completion for `async throws` closures in initializer.
- [Code completion issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CodeCompletionIssueOptionalEscapingInit/): incorrect completion for optional closures in initializer.


## SwiftData


- [SwiftData crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/SwiftDataCrashDefaultTemplate/): deleting the element will result in a crash in the standard template.


## OS


### iOS


- [Memory leak](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/MemoryLeakSearchableRefreshableScrollView/) when applying `.searchable` and `.refreshable` modifiers together on a `ScrollView`.
- [Crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CrashTypedThrowsObservableObject/) occurs when using a typed throws in a closure variable within an `ObservableObject`.
- [Crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CrashNotificationCenterClosureSwift6/) in Swift 6 language mode when using the closure-based version of the `UNUserNotificationCenter.requestAuthorization` function.
- [ForEach crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/ForEachCrashOnElementdeletionBindingInit/): when using the `Binding` variant of the init, after the animation of removing the last element has completed.
- [Popover crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/PopoverCrashAfterDeviceRotation/) after going to background and device rotation.
- [Button action](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/ButtonActionNotCancelledDuringScrollInSheet/) is not canceled during scrolling in a sheet and is executed after scrolling completes.
- [ScrollViewReader issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/ScrollViewReaderEmptyCellsOnScrollTo/) List returns empty cells when scrolling with scrollTo.
- [Gesture issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/GestureIssueLongPressUpdatingNotCalled/): `.updating` block is not called on `LongPressGesture`.
- [Gesture issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/GestureIssueHighPriorityToListScrolling/): when `DragGesture` is added as a `.highPriorityGesture` to a `List` or `ScrollView`, scrolling stops working.
- [NavigationStack issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/NavigationStackIssuePoppingBackIsPresented/): popping back programmatically doesn't work when using `.navigationDestination(isPresented:)`.
- [NavigationStack issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/NavigationStackIssuePathClearActiveSearchable/): when clearing a path, it does not go back if there was a transition with an active `.searchable`.
- [Sheet issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/SheetIssuePresentationDetentsIgnoredOnReopen/): `.presentationDetents` is ignored if the sheet is reopened after a short period.
- [Sheet issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/SheetIssueStateRestorationMultiplePresented/): if you have multiple `.sheet`s open, when you restore the state, not all of them will be presented, and after that `.sheet` won't be open even manually until you close the previous one.
- [TabView issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/TabViewIssuePageTabAfterRotation/): wrong tab displayed after rotation when using `.page` style.
- [@State issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/StateIssueSharedBetweenScenes/): the same variable is shared between different scenes.
- [PhaseAnimator crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/PhaseAnimatorCrashOnViewClose/): when closing the presented view or popping the pushed view on which it is (or 100% CPU load iOS 17.0).
- [Lifecycle issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/LifeCycleIssueWhenSwitchingViewsWithNavigationStack/): `onAppear`, `onDisappear`, `task` are called again when the `NavigationStack` with a View is replaced by another View.
- [Alert issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/AlertIssueButtonsTintAffectedByModifier/): `.default` and `.cancel` buttons are recolored if alert in a `NavigationStack` that has `.tint` applied (or higher up the Views tree).
- [Alert issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/AlertDisabledButtonIssue/): `.disabled` modifier does not work correctly up to iOS 18.
- [UIBezierPath issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/UIBezierPathIssueCornerRadius/): `cornerRadius` is incorrect for `roundedRect` when it exceeds ~65.5% of half of `min(width, height)`.
- [List issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/ListEditButtonOnlyWorksSecondTime/): the edit button only works the second time.
- [Animation glitch](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/AnimationGlitchDragAndDrop/) on drag and drop action.
- [Popover issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/PopoverArrowEdgeNotRespected/): `arrowEdge` value is not respected.
- [Navigation title](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/NavigationTitleQuotationMarksWhitespace/) is displayed in quotation marks `" "` if a whitespace is specified as the title.
- [Animation stops working](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/AnimationIssueInLazyContainers/) in Lazy containers (Stacks, Grids) when navigating to the next screen and returning.


### iPadOS


- [Crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CrashTypedThrowsObservableObject/) occurs when using a typed throws in a closure variable within an `ObservableObject`.
- [Crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CrashNotificationCenterClosureSwift6/) in Swift 6 language mode when using the closure-based version of the `UNUserNotificationCenter.requestAuthorization` function.
- [ForEach crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/ForEachCrashOnElementdeletionBindingInit/): when using the `Binding` variant of the init, after the animation of removing the last element has completed.
- [Popover crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/PopoverCrashAfterDeviceRotation/) after going to background and device rotation.
- [Gesture issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/GestureIssueLongPressUpdatingNotCalled/): `.updating` block is not called on `LongPressGesture`.
- [Gesture issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/GestureIssueHighPriorityToListScrolling/): when `DragGesture` is added as a `.highPriorityGesture` to a `List` or `ScrollView`, scrolling stops working.
- [NavigationSplitView issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/NavigationSplitViewToolbarItemDisappearBackground/): toolbar items disappear after the app goes to the background and then returns to the foreground.
- [TabView issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/TabViewIssuePageTabAfterRotation/): wrong tab displayed after rotation when using `.page` style.
- [@State issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/StateIssueSharedBetweenScenes/): the same variable is shared between different scenes.
- [PhaseAnimator crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/PhaseAnimatorCrashOnViewClose/): when closing the presented view or popping the pushed view on which it is (or 100% CPU load iOS 17.0).
- [Lifecycle issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/LifeCycleIssueWhenSwitchingViewsWithNavigationStack/): `onAppear`, `onDisappear`, `task` are called again when the `NavigationStack` with a View is replaced by another View.
- [SwiftData crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/SwiftDataCrashDefaultTemplate/): deleting the element will result in a crash in the standard template.
- [Alert issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/AlertIssueButtonsTintAffectedByModifier/): `.default` and `.cancel` buttons are recolored if alert in a `NavigationStack` that has `.tint` applied (or higher up the Views tree).
- [Alert issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/AlertDisabledButtonIssue/): `.disabled` modifier does not work correctly up to iOS 18.
- [UIBezierPath issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/UIBezierPathIssueCornerRadius/): `cornerRadius` is incorrect for `roundedRect` when it exceeds ~65.5% of half of `min(width, height)`.
- [List issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/ListEditButtonOnlyWorksSecondTime/): the edit button only works the second time.
- [Popover issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/PopoverArrowEdgeNotRespected/): `arrowEdge` value is not respected.
- [Navigation title](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/NavigationTitleQuotationMarksWhitespace/) is displayed in quotation marks `" "` if a whitespace is specified as the title.
- [Animation stops working](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/AnimationIssueInLazyContainers/) in Lazy containers (Stacks, Grids) when navigating to the next screen and returning.


### macOS


- [@State issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/StateIssueSharedBetweenScenes/): the same variable is shared between different scenes.


### watchOS


- [Crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CrashTypedThrowsObservableObject/) occurs when using a typed throws in a closure variable within an `ObservableObject`.
- [@State issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/StateIssueSharedBetweenScenes/): the same variable is shared between different scenes.


### tvOS


- [@State issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/StateIssueSharedBetweenScenes/): the same variable is shared between different scenes.


### visionOS


- [Crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CrashTypedThrowsObservableObject/) occurs when using a typed throws in a closure variable within an `ObservableObject`.
- [@State issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/StateIssueSharedBetweenScenes/): the same variable is shared between different scenes.


## Overview


### [Memory leak](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/MemoryLeakSearchableRefreshableScrollView/) when applying `.searchable` and `.refreshable` modifiers together on a `ScrollView`.


A video demonstrating how it behaves on iOS 17.2 without a memory leak and on iOS 18.2 with a memory leak.


https://github.com/user-attachments/assets/56ebfc9c-8afc-43be-8f7b-cf8699219853


---


### [Crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CrashNotificationCenterClosureSwift6/) in Swift 6 language mode when using the closure-based version of the `UNUserNotificationCenter.requestAuthorization` function.


Images with the result.


![error](https://raw.githubusercontent.com/VAndrJ/awesome-apple-bugs/master/Bugs/CrashNotificationCenterClosureSwift6/Resources/error.jpeg)
![solution](https://raw.githubusercontent.com/VAndrJ/awesome-apple-bugs/master/Bugs/CrashNotificationCenterClosureSwift6/Resources/solution.jpeg)


---


### [Crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/DocumentsAppCrashInSwift6LanguageMode/) in Swift 6 language in default "Document App" template.


Video demonstrating how it crashes:


https://github.com/user-attachments/assets/55448d6e-050e-43f2-a1a3-6acbe268bab4


---


### [ForEach crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/ForEachCrashOnElementdeletionBindingInit/): when using the `Binding` variant of the init, after the animation of removing the last element has completed.


A video demonstrating how it works on iOS 18.4.


https://github.com/user-attachments/assets/3db04e00-7567-4958-a139-c8cfca07752c


---


### [Popover crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/PopoverCrashAfterDeviceRotation/) after going to background and device rotation.


A video demonstrating how it works on iOS 18.1.


https://github.com/user-attachments/assets/e5136a45-81fe-421b-a420-6f0fd4eb0bac


---


### [Button action](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/ButtonActionNotCancelledDuringScrollInSheet/) is not canceled during scrolling in a sheet and is executed after scrolling completes.

A video demonstrating how it works on iOS 17 and iOS 18.


https://github.com/user-attachments/assets/028762ed-958b-485a-9eb8-bc108245a920


---


### [Gesture issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/GestureIssueLongPressUpdatingNotCalled/): `.updating` block is not called on `LongPressGesture`.


A video demonstrating how it behaves on iOS 18 and iOS 17.


https://github.com/user-attachments/assets/d218c595-fcb7-498d-b2d0-39e3d4f007e6


---


### [ScrollViewReader issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/ScrollViewReaderEmptyCellsOnScrollTo/) List returns empty cells when scrolling with scrollTo.


A video demonstrating how it behaves on iOS 18.


https://github.com/user-attachments/assets/3292ebe7-2a81-4ca7-8026-8e48b7019a46


---


### [Gesture issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/GestureIssueHighPriorityToListScrolling/): when `DragGesture` is added as a `.highPriorityGesture` to a `List` or `ScrollView`, scrolling stops working.


A video demonstrating how it behaves on iOS 17 and iOS 18.


https://github.com/user-attachments/assets/53d8ad16-e00b-467d-8ecd-b7ff1dcee5c2


---


### [NavigationStack issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/NavigationStackIssuePoppingBackIsPresented/): popping back programmatically doesn't work when using `.navigationDestination(isPresented:)`.


A video demonstrating how it behaves on iOS 16 and iOS 17.


https://github.com/user-attachments/assets/0b98cf13-89b6-4200-8707-13f087c50684


---


### [NavigationStack issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/NavigationStackIssuePathClearActiveSearchable/): when clearing a path, it does not go back if there was a transition with an active `.searchable`.


A video demonstrating how it behaves on iOS 17 and iOS 18.


https://github.com/user-attachments/assets/9d89f6c4-20c1-4d19-a02b-0acb03866d7e


---


### [Sheet issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/SheetIssuePresentationDetentsIgnoredOnReopen/): `.presentationDetents` is ignored if the sheet is reopened after a short period.


A video demonstrating how it behaves on iOS 18.


https://github.com/user-attachments/assets/9b27c669-5038-4b6d-8d27-39ca18de218d


---


### [Sheet issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/SheetIssueStateRestorationMultiplePresented/): if you have multiple `.sheet`s open, when you restore the state, not all of them will be presented, and after that `.sheet` won't be open even manually until you close the previous one.


A video demonstrating how it behaves.


https://github.com/user-attachments/assets/c857e7d2-da21-4163-a261-720f471b09a5


---


### [Life cycle](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/LifeCyclePushedViewController/) of controllers when the new one is immediately pushed with `animation: true`.


Comparison images on iOS 18 and earlier.


![iOS18 example](https://raw.githubusercontent.com/VAndrJ/awesome-apple-bugs/master/Bugs/LifeCyclePushedViewController/Resources/iOS18.jpeg)![iOS17 example](https://raw.githubusercontent.com/VAndrJ/awesome-apple-bugs/master/Bugs/LifeCyclePushedViewController/Resources/iOS17.jpeg)


---


### [Crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CrashTypedThrowsObservableObject/) occurs when using a typed throws in a closure variable within an `ObservableObject`.


Video showing how it works up to but not including iOS 18.0.


https://github.com/user-attachments/assets/165ddf0c-74f9-4022-9a36-494f1a13adf5


---


### [Compilation error](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CompilationErrorObservableClassNameMember/) if `Observable` class name is `Member`.


![Example](https://raw.githubusercontent.com/VAndrJ/awesome-apple-bugs/master/Bugs/CompilationErrorObservableClassNameMember/Resources/error.jpeg)


---



### [Compilation error](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CompilationErrorPassingFunctionAsAnArgument/) when passing a function isolated to an actor as an argument.


![example](https://raw.githubusercontent.com/VAndrJ/awesome-apple-bugs/master/Bugs/CompilationErrorPassingFunctionAsAnArgument/Resources/error.jpeg)


---


### [NavigationSplitView issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/NavigationSplitViewToolbarItemDisappearBackground/): toolbar items disappear after the app goes to the background and then returns to the foreground.


A video demonstrating how it behaves on iOS 18.


https://github.com/user-attachments/assets/ac02a63e-da70-4f7a-807c-276550a3a15d


---


### [Entry macro issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/EntryMacroComputedProperty/): generated variable `defaultValue` is a computed property if the variable type is explicitly specified, but a stored property if the variable type is not specified explicitly.


Image comparing the code generated by the macro


![entry](https://raw.githubusercontent.com/VAndrJ/awesome-apple-bugs/master/Bugs/EntryMacroComputedProperty/Resources/entry.jpg)
![entry](https://raw.githubusercontent.com/VAndrJ/awesome-apple-bugs/master/Bugs/EntryMacroComputedProperty/Resources/entry_expansion_1610.jpg)
![entry](https://raw.githubusercontent.com/VAndrJ/awesome-apple-bugs/master/Bugs/EntryMacroComputedProperty/Resources/entry_expansion_1620.jpg)


---


### [TabView issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/TabViewIssuePageTabAfterRotation/): wrong tab displayed after rotation when using `.page` style.


A video demonstrating how it behaves on iOS 15.


https://github.com/user-attachments/assets/3f399638-ee14-40df-9d39-42848cf601fb


---


### [@State issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/StateIssueSharedBetweenScenes/): the same variable is shared between different scenes.


A video demonstrating how it behaves on iPadOS 17.4 and 17.5.


https://github.com/user-attachments/assets/fab3cc1e-9750-47f7-a697-f84d333cd69d


---


### [PhaseAnimator crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/PhaseAnimatorCrashOnViewClose/): when closing the presented view or popping the pushed view on which it is (or 100% CPU load iOS 17.0).


A video demonstrating how it behaves on iOS 17.2.


https://github.com/user-attachments/assets/0a5bdce3-ba23-477b-b75a-b90f1564261d


---


### [Lifecycle issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/LifeCycleIssueWhenSwitchingViewsWithNavigationStack/): `onAppear`, `onDisappear`, `task` are called again when the `NavigationStack` with a View is replaced by another View.


A video demonstrating how it behaves on iOS 18.


https://github.com/user-attachments/assets/56a19c6e-002f-4c54-984e-bab6a64de7b8


---


### [Alert issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/AlertIssueButtonsTintAffectedByModifier/): `.default` and `.cancel` buttons are recolored if alert in a `NavigationStack` that has `.tint` applied (or higher up the Views tree).


Video showing how it works on iOS 18.1 and iOS 18.2.


https://github.com/user-attachments/assets/ae982f4e-ef68-4544-911a-ea9dbf506ca8


---


- [Alert issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/AlertDisabledButtonIssue/): `.disabled` modifier does not work correctly up to iOS 18.


Video showing how it works on iOS 18.4 and iOS 16.2.


https://github.com/user-attachments/assets/46b47d12-77ee-4d1a-a86b-3e33e311c669


---


### [SwiftData crash](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/SwiftDataCrashDefaultTemplate/): deleting the element will result in a crash in the standard template.


A video demonstrating how it behaves on iPadOS 17.5.


https://github.com/user-attachments/assets/537d8a71-ff94-4c93-a8d6-f37f7d085035


---


### [UIBezierPath issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/UIBezierPathIssueCornerRadius/): `cornerRadius` is incorrect for `roundedRect` when it exceeds ~65.5% of half of `min(width, height)`.


A video demonstrating how it behaves on iOS 18.


https://github.com/user-attachments/assets/0dc54a55-ce53-4576-9094-2a40d6f73f16


---


### [List issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/ListEditButtonOnlyWorksSecondTime/): the edit button only works the second time.


A video showing how it works on iOS 17.0.


https://github.com/user-attachments/assets/6efe7d2b-5e4f-4961-bc78-fe2d09d6247f


---


### [Popover issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/PopoverArrowEdgeNotRespected/): `arrowEdge` value is not respected.


A video demonstrating how it behaves on iOS 17.


https://github.com/user-attachments/assets/3d0d7986-6b0a-4c0c-9562-773460038d7e


---


### [Animation stops working](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/AnimationIssueInLazyContainers/) in Lazy containers (Stacks, Grids) when navigating to the next screen and returning.


Video showing how it works on iOS 18.2.


https://github.com/user-attachments/assets/782c2b5b-8fb9-4651-a883-e286d57bab29


---


### [Animation glitch](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/AnimationGlitchDragAndDrop/) on drag and drop action.


A video showing how it works on iOS 18.0.


https://github.com/user-attachments/assets/c4c8cdb1-4539-44e1-8069-e52e61b95f34


---


### [Navigation title](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/NavigationTitleQuotationMarksWhitespace/) is displayed in quotation marks `" "` if a whitespace is specified as the title.


Comparison images on iOS 18 and earlier storyboard/code.


![storyboard](https://raw.githubusercontent.com/VAndrJ/awesome-apple-bugs/master/Bugs/NavigationTitleQuotationMarksWhitespace/Resources/storyboard.jpeg)
![code](https://raw.githubusercontent.com/VAndrJ/awesome-apple-bugs/master/Bugs/NavigationTitleQuotationMarksWhitespace/Resources/code.jpeg)


---


### [Code completion issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CodeCompletionIssueAsyncThrowsInit/): incorrect completion for `async throws` closures in initializer.


Video showing how it works in Xcode 16.0.


https://github.com/user-attachments/assets/52eb80f0-e26a-4c93-bc76-6dde5ea6b1f0


---


### [Code completion issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/CodeCompletionIssueOptionalEscapingInit/): incorrect completion for optional closures in initializer.


Video showing how it works in Xcode 16.0.


https://github.com/user-attachments/assets/6c14f9ae-7651-497d-b3df-d45198d7fa76


---


## Contributing


Contributions welcome! See the [guidelines](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/.github/CONTRIBUTING.md).
