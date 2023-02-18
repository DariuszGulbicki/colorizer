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
        return "\(effect.rawValue)\(text)\(EffectEscapeCode.reset.rawValue)"
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

}
