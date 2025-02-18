## Problem


UIBezierPath issue: `cornerRadius` is incorrect for `roundedRect` when it exceeds ~65.5% of half of `min(width, height)`.


## Environment


- Xcode 16.
- iOS 7-18.3.
- Swift 5/6.


## Solution / Workaround


- No solution. 
- Write own implementation of path corner rounding using `.addArc` / `.addCurve` / `.addQuadCurve`.


## Demo


A video demonstrating how it behaves on iOS 18.


https://github.com/user-attachments/assets/0dc54a55-ce53-4576-9094-2a40d6f73f16


## Additions


