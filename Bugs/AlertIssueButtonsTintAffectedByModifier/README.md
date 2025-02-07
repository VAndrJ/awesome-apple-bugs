## Problem


Alert issue: `.default` and `.cancel` buttons are recolored if alert in a `NavigationStack` that has `.tint` applied (or higher up the Views tree).


## Environment


- Xcode 16.0-16.2 (current; check on future versions).
- iOS 18.1.
- iPadOS 18.1.
- Swift 5/6.


## Solution / Workaround


Move `.alert` above tinted Views branch boundaries.


## Demo


Video showing how it works on iOS 18.1 and iOS 18.2.


https://github.com/user-attachments/assets/ae982f4e-ef68-4544-911a-ea9dbf506ca8


## Additions

