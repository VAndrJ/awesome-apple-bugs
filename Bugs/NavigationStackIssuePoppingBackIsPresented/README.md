## Problem


`NavigationStack` issue: Popping back programmatically doesn’t work for navigation deeper than one level when using `.navigationDestination(isPresented:)`.


## Environment


- Xcode 16.
- iOS 16.0-16.2.
- Swift 5/6.


## Solution / Workaround


Use array-based navigation path.


## Demo


A video demonstrating how it behaves on iOS 16 and iOS 17.


https://github.com/user-attachments/assets/0b98cf13-89b6-4200-8707-13f087c50684


## Additions


One of the many problems with `NavigationStack`:
- [NavigationStack issue](https://github.com/VAndrJ/awesome-apple-bugs/blob/main/Bugs/NavigationStackIssuePathClearActiveSearchable/README.md): popping back programmatically doesn't work when using `.navigationDestination(isPresented:)`.

