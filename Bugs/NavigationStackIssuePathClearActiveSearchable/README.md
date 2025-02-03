## Problem


`NavigationStack` issue: when clearing a path, it does not go back if there was a transition with an active `.searchable`.


## Environment


- Xcode 16.0-16.2 (current; check on future versions).
- iOS 18.0-18.3 (current; check on future versions).
- Swift 5/6.


## Solution / Workaround


Use the `.searchable(text:isPresented:)` modifier and set `isPresented` variable to `false` before the transition, making it inactive.


## Demo


A video demonstrating how it behaves on iOS 17 and on iOS 18.


upload video.


## Additions


One of the many problems with `NavigationStack`:
- [NavigationStack issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/NavigationStackIssuePoppingBackIsPresented/README.md): popping back programmatically doesn't work when using `.navigationDestination(isPresented:)`.

