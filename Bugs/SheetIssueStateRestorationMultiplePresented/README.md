## Problem


Sheets issue: if you have multiple `.sheet`s open, when you restore the state, not all of them will be presented, and after that `.sheet` won't be open even manually until you close the previous one.


## Environment


- Xcode 16.0-16.2 (current; check on future versions).
- iOS 16.0-18.3 (current; check on future versions).
- Swift 5/6.


## Solution / Workaround


- Add a delay to sheet presentation on restoration.
- Disable animation during sheet presentation on restoration.


## Demo


A video demonstrating how it behaves.


https://github.com/user-attachments/assets/c857e7d2-da21-4163-a261-720f471b09a5


## Additions

