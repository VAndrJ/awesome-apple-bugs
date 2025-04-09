## Problem


Sheet issue: `.presentationDetents` is ignored if the sheet is reopened after a short period.


## Environment


- Xcode 16.0-16.3 (current; check on future versions).
- iOS 18.0-18.4 (current; check on future versions).
- Swift 5/6.


## Solution / Workaround


Allow `.sheet` to be presented again only after a short delay.


## Demo


A video demonstrating how it behaves on iOS 18.


https://github.com/user-attachments/assets/9b27c669-5038-4b6d-8d27-39ca18de218d


## Additions

