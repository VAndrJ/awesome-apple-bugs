## Problem


The `.searchable` and `.refreshable` modifiers on `ScrollView` cause a memory leak when applied together.


## Environment


- Xcode 16.0-16.2 (current; check on future versions).
- iOS 17.3-18.2 (current; check on future versions).
- Swift 5/6.


## Solution / Workaround


Using capture list.


## Demo


A video demonstrating how it behaves on iOS 17.2 without a memory leak and on iOS 18.2 with a memory leak.


upload video.


## Additions


Сritical issue.

