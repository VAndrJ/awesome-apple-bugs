## Problem


`NavigationStack` issue: when clearing a path, it does not go back if there was a transition with an active `.searchable`.


## Environment


- Xcode 16.0-16.2 (current; check on future versions).
- iOS 18.0-18.3 (current; check on future versions).
- Swift 5/6.


## Solution / Workaround


Use the `.searchable(text:isPresented:)` modifier and set `isPresented` variable to `false` before the transition, making it inactive.


## Demo


A video demonstrating how it behaves on iOS 17 and iOS 18.


https://github.com/user-attachments/assets/9d89f6c4-20c1-4d19-a02b-0acb03866d7e


## Additions


One of the many problems with `NavigationStack`:
- [NavigationStack issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/NavigationStackIssuePoppingBackIsPresented/README.md): popping back programmatically doesn't work when using `.navigationDestination(isPresented:)`.

