## Problem


Gesture issue: when `DragGesture` is added as a `.highPriorityGesture` to a `List` or `ScrollView`, scrolling stops working.


## Environment


- Xcode 16.0-16.2 (current; check on future versions).
- iOS 18.0-18.3 (current; check on future versions).
- iPadOS 18.0-18.3 (current; check on future versions).
- Swift 5/6.


## Solution / Workaround


- Build with Xcode 15.4.
- Increase the `minimumDistance` from the default 10 to ~20 or more.
- Use different gestures.


## Demo


A video demonstrating how it behaves on iOS 17 and iOS 18.


https://github.com/user-attachments/assets/53d8ad16-e00b-467d-8ecd-b7ff1dcee5c2


## Additions

