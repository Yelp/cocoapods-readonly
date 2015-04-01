# cocoapods-readonly

Developers switching from submodules are used to modifying library source files from within Xcode. If you don’t checkout a local version first, changes won’t be picked up by git and might be lost the next time you run ‘pod install.'

This plugin removes the write permission from all pod-related files that aren’t installed via a local pod. Xcode will then give you a helpful message, noting that the file is locked.

## Installation

    $ gem install cocoapods-readonly

## Usage

This runs automatically on pod install – you don't have to do anything.
