public enum EffectEscapeCode: String {

    case reset = "\u{001B}[0m"
    case bold = "\u{001B}[1m"
    case dim = "\u{001B}[2m"
    case italic = "\u{001B}[3m"
    case underline = "\u{001B}[4m"
    case inverse = "\u{001B}[7m"
    case hidden = "\u{001B}[8m"
    case strikethrough = "\u{001B}[9m"

    case black = "\u{001B}[30m"
    case red = "\u{001B}[31m"
    case green = "\u{001B}[32m"
    case yellow = "\u{001B}[33m"
    case blue = "\u{001B}[34m"
    case magenta = "\u{001B}[35m"
    case cyan = "\u{001B}[36m"
    case white = "\u{001B}[37m"

    case backgroundBlack = "\u{001B}[40m"
    case backgroundRed = "\u{001B}[41m"
    case backgroundGreen = "\u{001B}[42m"
    case backgroundYellow = "\u{001B}[43m"
    case backgroundBlue = "\u{001B}[44m"
    case backgroundMagenta = "\u{001B}[45m"
    case backgroundCyan = "\u{001B}[46m"
    case backgroundWhite = "\u{001B}[47m"

    case brightBlack = "\u{001B}[90m"
    case brightRed = "\u{001B}[91m"
    case brightGreen = "\u{001B}[92m"
    case brightYellow = "\u{001B}[93m"
    case brightBlue = "\u{001B}[94m"
    case brightMagenta = "\u{001B}[95m"
    case brightCyan = "\u{001B}[96m"
    case brightWhite = "\u{001B}[97m"

    case backgroundBrightBlack = "\u{001B}[100m"
    case backgroundBrightRed = "\u{001B}[101m"
    case backgroundBrightGreen = "\u{001B}[102m"
    case backgroundBrightYellow = "\u{001B}[103m"
    case backgroundBrightBlue = "\u{001B}[104m"
    case backgroundBrightMagenta = "\u{001B}[105m"
    case backgroundBrightCyan = "\u{001B}[106m"
    case backgroundBrightWhite = "\u{001B}[107m"


    public func toString() -> String {
        return self.rawValue;
    }

    public func apply(_ text: String) -> String {
        return self.rawValue + text + EffectEscapeCode.reset.rawValue;
    }

    public static func getAsDict() -> [String:EffectEscapeCode] {
        return [
            "reset": .reset,
            "bold": .bold,
            "dim": .dim,
            "italic": .italic,
            "underline": .underline,
            "inverse": .inverse,
            "hidden": .hidden,
            "strikethrough": .strikethrough,
            "black": .black,
            "red": .red,
            "green": .green,
            "yellow": .yellow,
            "blue": .blue,
            "magenta": .magenta,
            "cyan": .cyan,
            "white": .white,
            "backgroundBlack": .backgroundBlack,
            "backgroundRed": .backgroundRed,
            "backgroundGreen": .backgroundGreen,
            "backgroundYellow": .backgroundYellow,
            "backgroundBlue": .backgroundBlue,
            "backgroundMagenta": .backgroundMagenta,
            "backgroundCyan": .backgroundCyan,
            "backgroundWhite": .backgroundWhite,
            "brightBlack": .brightBlack,
            "brightRed": .brightRed,
            "brightGreen": .brightGreen,
            "brightYellow": .brightYellow,
            "brightBlue": .brightBlue,
            "brightMagenta": .brightMagenta,
            "brightCyan": .brightCyan,
            "brightWhite": .brightWhite,
            "backgroundBrightBlack": .backgroundBrightBlack,
            "backgroundBrightRed": .backgroundBrightRed,
            "backgroundBrightGreen": .backgroundBrightGreen,
            "backgroundBrightYellow": .backgroundBrightYellow,
            "backgroundBrightBlue": .backgroundBrightBlue,
            "backgroundBrightMagenta": .backgroundBrightMagenta,
            "backgroundBrightCyan": .backgroundBrightCyan,
            "backgroundBrightWhite": .backgroundBrightWhite
        ]
    }

    public static func getByName(_ name: String) -> EffectEscapeCode? {
        switch name {
        case "reset":
            return .reset
        case "bold":
            return .bold
        case "dim":
            return .dim
        case "italic":
            return .italic
        case "underline":
            return .underline
        case "inverse":
            return .inverse
        case "hidden":
            return .hidden
        case "strikethrough":
            return .strikethrough
        case "black":
            return .black
        case "red":
            return .red
        case "green":
            return .green
        case "yellow":
            return .yellow
        case "blue":
            return .blue
        case "magenta":
            return .magenta
        case "cyan":
            return .cyan
        case "white":
            return .white
        case "backgroundBlack":
            return .backgroundBlack
        case "backgroundRed":
            return .backgroundRed
        case "backgroundGreen":
            return .backgroundGreen
        case "backgroundYellow":
            return .backgroundYellow
        case "backgroundBlue":
            return .backgroundBlue
        case "backgroundMagenta":
            return .backgroundMagenta
        case "backgroundCyan":
            return .backgroundCyan
        case "backgroundWhite":
            return .backgroundWhite
        case "brightBlack":
            return .brightBlack
        case "brightRed":
            return .brightRed
        case "brightGreen":
            return .brightGreen
        case "brightYellow":
            return .brightYellow
        case "brightBlue":
            return .brightBlue
        case "brightMagenta":
            return .brightMagenta
        case "brightCyan":
            return .brightCyan
        case "brightWhite":
            return .brightWhite
        case "backgroundBrightBlack":
            return .backgroundBrightBlack
        case "backgroundBrightRed":
            return .backgroundBrightRed
        case "backgroundBrightGreen":
            return .backgroundBrightGreen
        case "backgroundBrightYellow":
            return .backgroundBrightYellow
        case "backgroundBrightBlue":
            return .backgroundBrightBlue
        case "backgroundBrightMagenta":
            return .backgroundBrightMagenta
        case "backgroundBrightCyan":
            return .backgroundBrightCyan
        case "backgroundBrightWhite":
            return .backgroundBrightWhite
        default:
            return nil
        }
    }

}