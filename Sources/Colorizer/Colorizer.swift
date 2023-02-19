public struct Colorizer {
    
    private let codes: [String:EffectEscapeCode] = EffectEscapeCode.getAsDict()
    public var template = "&(@name)";

    public func format(_ text: String) -> String {
        var result = text
        for (name, code) in codes {
            result = result.replacing(template.replacing("@name", with: name), with: code.rawValue)
        }
        return result
    }

    public init(_ template: String = "&(@name)") {
        self.template = template
    }

    public static func colorize(_ text: String, _ effect: EffectEscapeCode) -> String {
        var out = (text)
        // If out starts with an escape code, don't add another one
        if (!out.hasPrefix(EffectEscapeCode.reset.rawValue)) {
            out = effect.rawValue + out
        }
        // If out ends with a FULL reset code, don't add another one
        if (!out.hasSuffix(EffectEscapeCode.reset.rawValue)) {
            out += EffectEscapeCode.reset.rawValue
        }
        return out
    }

    public static func colorize(_ text: String, _ effects: [EffectEscapeCode]) -> String {
        var result = text
        for effect in effects {
            result = colorize(result, effect)
        }
        return result
    }

    public static func colorize(_ text: String, _ effects: EffectEscapeCode...) -> String {
        return colorize(text, effects)
    }

    public static func colorize(_ text: String, _ effects: [EffectEscapeCode]...) -> String {
        var result = text
        for effect in effects {
            result = colorize(result, effect)
        }
        return result
    }

    public static func rainbow(_ text: String, _ effects: [EffectEscapeCode]) -> String {
        var output = ""
        for (index, char) in text.enumerated() {
            let color = effects[index % effects.count]
            output += colorize(String(char), color)
        }
        return output
    }

    public static func rainbow(_ text: String, _ effects: [[EffectEscapeCode]]) -> String {
        var output = ""
        for (index, char) in text.enumerated() {
            let currs = effects[index % effects.count]
            output += colorize(String(char), currs)
        }
        return output
    }

    public static func rainbow(_ text: String, _ effects: EffectEscapeCode...) -> String {
        return rainbow(text, effects)
    }

    public static func rainbow(_ text: String) -> String {
        return rainbow(text, .red, .yellow, .green, .cyan, .blue, .magenta)
    }

    // Functions corresponding to the ANSI escape codes

    public static func reset(_ text: String) -> String {
        return colorize(text, .reset)
    }

    public static func bold(_ text: String) -> String {
        return colorize(text, .bold)
    }

    public static func dim(_ text: String) -> String {
        return colorize(text, .dim)
    }

    public static func italic(_ text: String) -> String {
        return colorize(text, .italic)
    }

    public static func underline(_ text: String) -> String {
        return colorize(text, .underline)
    }

    public static func inverse(_ text: String) -> String {
        return colorize(text, .inverse)
    }

    public static func hidden(_ text: String) -> String {
        return colorize(text, .hidden)
    }

    public static func strikethrough(_ text: String) -> String {
        return colorize(text, .strikethrough)
    }

    public static func black(_ text: String) -> String {
        return colorize(text, .black)
    }

    public static func red(_ text: String) -> String {
        return colorize(text, .red)
    }

    public static func green(_ text: String) -> String {
        return colorize(text, .green)
    }

    public static func yellow(_ text: String) -> String {
        return colorize(text, .yellow)
    }

    public static func blue(_ text: String) -> String {
        return colorize(text, .blue)
    }

    public static func magenta(_ text: String) -> String {
        return colorize(text, .magenta)
    }

    public static func cyan(_ text: String) -> String {
        return colorize(text, .cyan)
    }

    public static func white(_ text: String) -> String {
        return colorize(text, .white)
    }

    public static func brightBlack(_ text: String) -> String {
        return colorize(text, .brightBlack)
    }

    public static func brightRed(_ text: String) -> String {
        return colorize(text, .brightRed)
    }

    public static func brightGreen(_ text: String) -> String {
        return colorize(text, .brightGreen)
    }

    public static func brightYellow(_ text: String) -> String {
        return colorize(text, .brightYellow)
    }

    public static func brightBlue(_ text: String) -> String {
        return colorize(text, .brightBlue)
    }

    public static func brightMagenta(_ text: String) -> String {
        return colorize(text, .brightMagenta)
    }

    public static func brightCyan(_ text: String) -> String {
        return colorize(text, .brightCyan)
    }

    public static func brightWhite(_ text: String) -> String {
        return colorize(text, .brightWhite)
    }

    public static func blackBackground(_ text: String) -> String {
        return colorize(text, .backgroundBlack)
    }

    public static func redBackground(_ text: String) -> String {
        return colorize(text, .backgroundRed)
    }

    public static func greenBackground(_ text: String) -> String {
        return colorize(text, .backgroundGreen)
    }

    public static func yellowBackground(_ text: String) -> String {
        return colorize(text, .backgroundYellow)
    }

    public static func blueBackground(_ text: String) -> String {
        return colorize(text, .backgroundBlue)
    }

    public static func magentaBackground(_ text: String) -> String {
        return colorize(text, .backgroundMagenta)
    }

    public static func cyanBackground(_ text: String) -> String {
        return colorize(text, .backgroundCyan)
    }

    public static func whiteBackground(_ text: String) -> String {
        return colorize(text, .backgroundWhite)
    }

    public static func brightBlackBackground(_ text: String) -> String {
        return colorize(text, .backgroundBrightBlack)
    }

    public static func brightRedBackground(_ text: String) -> String {
        return colorize(text, .backgroundBrightRed)
    }

    public static func brightGreenBackground(_ text: String) -> String {
        return colorize(text, .backgroundBrightGreen)
    }

    public static func brightYellowBackground(_ text: String) -> String {
        return colorize(text, .backgroundBrightYellow)
    }

    public static func brightBlueBackground(_ text: String) -> String {
        return colorize(text, .backgroundBrightBlue)
    }

    public static func brightMagentaBackground(_ text: String) -> String {
        return colorize(text, .backgroundBrightMagenta)
    }

    public static func brightCyanBackground(_ text: String) -> String {
        return colorize(text, .backgroundBrightCyan)
    }

    public static func brightWhiteBackground(_ text: String) -> String {
        return colorize(text, .backgroundBrightWhite)
    }

}
