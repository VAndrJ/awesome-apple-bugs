## Problem


The life cycle of controllers when the new one is immediately pushed with `animation: true` is changed on iOS 18.0+.


## Environment


- Xcode 16.0-16.2 (current; check on future versions).
- iOS 18.0-18.2 (current; check on future versions).
- Swift 5/6.


## Solution / Workaround


Use `DispatchQueue.main.async`.


## Demo


Comparison images on iOS 18 and earlier.


![iOS18 example](https://raw.githubusercontent.com/VAndrJ/awesome-apple-bugs/master/Bugs/LifeCyclePushedViewController/Resources/iOS18.jpeg)
![iOS17 example](https://raw.githubusercontent.com/VAndrJ/awesome-apple-bugs/master/Bugs/LifeCyclePushedViewController/Resources/iOS17.jpeg)


## Additions


This may not be a problem but rather an additional optimization in iOS 18.0. However, if you rely on this behavior for any reason, be sure to take it into account.

