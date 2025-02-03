## Problem


`NavigationStack` issue: Popping back programmatically doesn’t work for navigation deeper than one level when using `.navigationDestination(isPresented:)`.


## Environment


- Xcode 16.
- iOS 16.0-16.2.
- Swift 5/6.


## Solution / Workaround


Use array-based navigation path.


## Demo


A video demonstrating how it behaves on iOS 16 and on iOS 17.


upload video.


## Additions


One of the many problems with `NavigationStack`.


