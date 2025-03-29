## Problem


ForEach crash: when using the `Binding` variant of the init, after the animation of removing the last element has completed.


## Environment


- Xcode 16.
- iOS 18.3-18.4beta (current; check on future versions).
- iPadOS 18.3-18.4beta (current; check on future versions).
- Swift 5/6.


## Solution / Workaround


- Check for attempt to use binding with empty array and use default value if array is empty.
- Prevent the array from ever being empty.
- Add a delay. Extremely unreliable, but better than a guaranteed crash.


## Demo


A video demonstrating how it works on iOS 18.4.


https://github.com/user-attachments/assets/3db04e00-7567-4958-a139-c8cfca07752c


## Additions

