# Common

## Project setup

### Requirements
- Xcode 11.4.1
- OSX 10.15.4 or later

### Getting Started
#### CocoaPods
This project uses [Cocoapods](https://cocoapods.org) for third-party dependencies management, therefore before opening it you have to make sure you have the latest stable version by running:

    sudo gem install cocoapods

Then cd to the root of the project and run:

    pod install --repo-update

Now you can open the `Common.xcworkspace` file to run the project in Xcode.

#### Code style
The code style definition follows [Google's Swift Style Guide](https://google.github.io/swift/) which is a review of the official Apple's Swift standard library style.

#### SwiftLint
This project uses [SwiftLint](https://github.com/realm/SwiftLint) as a lint / formatter tool.
You can see the errors and warnings of each build right inside Xcode's issue navigator, as the regular ones.
You can either fix them manually or rely on the SwiftLint's autocorrection feature that can be run via the following command `Pods/SwiftLint/swiftlint autocorrect`.
The lint rules are contained in the `.swiftlint.yml` file and should be progressively hardened, the initial version is reasonable enough to start using it without having a huge impact on the codebase.

Make sure you select `Automatically trim trailing whitespaces` and `Including whitespace-only lines` on Xcode.
You can access these checkboxes at `Xcode -> Preferences -> Text Editing -> Editing`

To automatically fix all SwiftLint warnings cd to the root of the project and run:

	./Pods/SwiftLint/swiftlint autocorrect
	
#### Git hooks
Please add the following pre-commit hook on your machine: this will enforce the SwiftLint check before committing any changes to the codebase.
~~~~
#!/bin/sh
echo "Running static code analysis..."
status=$(./Pods/SwiftLint/swiftlint)
if [  -z "$status" ] ; then
    echo "... all good!"
    exit 0
else
    echo 1>&2 "... oh no! Errors found, commit aborted. Please run ./Pods/SwiftLint/swiftlint and fix any additional errors."
    exit 1
fi
~~~~
