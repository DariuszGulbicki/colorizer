extension String {

    public func applyEffect(_ effect: EffectEscapeCode) -> String {
        self = Colorizer.colorize(self, effect)
    }

    public func applyEffects(_ effects: [EffectEscapeCode]) -> String {
        self = Colorizer.colorize(self, effects)
    }

    public func applyEffects(_ effects: EffectEscapeCode...) -> String {
        self = Colorizer.colorize(self, effects)
    }

    public func applyEffects(_ effects: [EffectEscapeCode]...) -> String {
        self = Colorizer.colorize(self, effects)
    }

    public func rainbow(_ effects: [EffectEscapeCode]) -> String {
        self = Colorizer.rainbow(self, effects)
    }

    public func rainbow(_ effects: [[EffectEscapeCode]]) -> String {
        self = Colorizer.rainbow(self, effects)
    }

    public func rainbow(_ effects: EffectEscapeCode...) -> String {
        self = Colorizer.rainbow(self, effects)
    }

    public func rainbow(_ effects: [EffectEscapeCode]...) -> String {
        self = Colorizer.rainbow(self, effects)
    }

    public func reset() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.reset)
    }

    public func bold() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.bold)
    }

    public func dim() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.dim)
    }

    public func italic() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.italic)
    }

    public func underline() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.underline)
    }

    public func inverse() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.inverse)
    }

    public func hidden() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.hidden)
    }

    public func strikethrough() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.strikethrough)
    }

    public func black() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.black)
    }

    public func red() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.red)
    }

    public func green() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.green)
    }

    public func yellow() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.yellow)
    }

    public func blue() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.blue)
    }

    public func magenta() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.magenta)
    }

    public func cyan() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.cyan)
    }

    public func white() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.white)
    }

    public func blackBackground() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.blackBackground)
    }

    public func redBackground() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.redBackground)
    }

    public func greenBackground() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.greenBackground)
    }

    public func yellowBackground() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.yellowBackground)
    }

    public func blueBackground() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.blueBackground)
    }

    public func magentaBackground() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.magentaBackground)
    }

    public func cyanBackground() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.cyanBackground)
    }

    public func whiteBackground() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.whiteBackground)
    }

    public func brightBlack() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.brightBlack)
    }

    public func brightRed() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.brightRed)
    }

    public func brightGreen() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.brightGreen)
    }

    public func brightYellow() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.brightYellow)
    }

    public func brightBlue() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.brightBlue)
    }

    public func brightMagenta() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.brightMagenta)
    }

    public func brightCyan() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.brightCyan)
    }

    public func brightWhite() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.brightWhite)
    }

    public func brightBlackBackground() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.brightBlackBackground)
    }

    public func brightRedBackground() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.brightRedBackground)
    }

    public func brightGreenBackground() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.brightGreenBackground)
    }

    public func brightYellowBackground() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.brightYellowBackground)
    }

    public func brightBlueBackground() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.brightBlueBackground)
    }

    public func brightMagentaBackground() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.brightMagentaBackground)
    }

    public func brightCyanBackground() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.brightCyanBackground)
    }

    public func brightWhiteBackground() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.brightWhiteBackground)
    }

    public func blackBright() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.blackBright)
    }

    public func redBright() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.redBright)
    }

    public func greenBright() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.greenBright)
    }

    public func yellowBright() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.yellowBright)
    }

    public func blueBright() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.blueBright)
    }

    public func magentaBright() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.magentaBright)
    }

    public func cyanBright() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.cyanBright)
    }

    public func whiteBright() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.whiteBright)
    }

    public func blackBrightBackground() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.blackBrightBackground)
    }

    public func redBrightBackground() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.redBrightBackground)
    }

    public func greenBrightBackground() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.greenBrightBackground)
    }

    public func yellowBrightBackground() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.yellowBrightBackground)
    }

    public func blueBrightBackground() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.blueBrightBackground)
    }

    public func magentaBrightBackground() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.magentaBrightBackground)
    }

    public func cyanBrightBackground() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.cyanBrightBackground)
    }

    public func whiteBrightBackground() -> String {
        self = Colorizer.colorize(self, EffectEscapeCode.whiteBrightBackground)
    }
    
}