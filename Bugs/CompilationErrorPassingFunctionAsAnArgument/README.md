## Problem


Compilation error when passing a function isolated to an actor as an argument.


## Environment


- Xcode 16.0-16.2 (current; check on future versions).
- Swift 6.


## Solution / Workaround


Use closure-based syntax.


## Demo


![example](https://raw.githubusercontent.com/VAndrJ/awesome-apple-bugs/master/Bugs/CompilationErrorPassingFunctionAsAnArgument/Resources/error.jpeg)


## Additions


Most likely, this is due to the incomplete implementation of typed throws and will be fixed in [Swift 7](https://github.com/swiftlang/swift/blob/72969094d29719872c6692767c7fbcb947b9ddd4/include/swift/Basic/Features.def#L233)

