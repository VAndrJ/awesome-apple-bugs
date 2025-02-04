## Problem


Crash in Swift 6 language mode when using the closure-based version of the `UNUserNotificationCenter.requestAuthorization` function.


## Environment


- Xcode 16.0-16.2 (current; check on future versions).
- iOS 18.0-18.3 (current; check on future versions).
- iPadOS 18.0-18.3 (current; check on future versions).
- Swift 6.


## Solution / Workaround


- Add `@Sendable` to the closure.
- Use the `async` version of this function.


## Demo


Images with the result.


![error](https://raw.githubusercontent.com/VAndrJ/awesome-apple-bugs/master/Bugs/CrashNotificationCenterClosureSwift6/Resources/error.jpeg)
![solution](https://raw.githubusercontent.com/VAndrJ/awesome-apple-bugs/master/Bugs/CrashNotificationCenterClosureSwift6/Resources/solution.jpeg)


## Additions

