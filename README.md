![Project banner](https://raw.githubusercontent.com/DariuszGulbicki/colorizer/main/banner.png)

# Colorizer

A swift library for adding colors and effects to the terminal.

## Installation

### Swift Package Manager

You can use [The Swift Package Manager](https://swift.org/package-manager) to install `Colorizer` by adding the proper description to your `Package.swift` file:

```swift
.package(url: "https://github.com/DariuszGulbicki/colorizer.git", from: "1.0.0")
```

## Usage

Import the library:

```swift
import Colorizer
```

Colorize a string:

```swift
// Add single effect
Colorizer.colorize("Hello, world!", .red)

// Add multiple effects
Colorizer.colorize("Hello, world!", .bold, .underline)
```

Format a string:

```swift
// Create colorizer object
var colorizer = Colorizer()

// Format a string with colorizer
colorizer.format("&(bold)&(underline)&(yellow)Hello, &(green)world!&(reset)")
```

Rainbowify a string:

```swift
// Rainbow with standard colors
Colorizer.rainbow("This is just a test!")

// Custom rainbow
Colorizer.rainbow("Hello, World!", .brightRed, .brightGreen, .brightWhite)

// Custom rainbow with multiple effects
Colorizer.rainbow("Hello, World!", [[.bold, .underline, .red], [.bold, .underline, .green], [.bold, .underline, .white]])
```

If you print these examples to the terminal, you should see something like this:

![Printed examples](https://raw.githubusercontent.com/DariuszGulbicki/colorizer/main/example.png)

## Contributing

Contributions are welcome. Please open an issue or submit a pull request.

## License

Colorizer is released under the MIT license. See LICENSE for details.