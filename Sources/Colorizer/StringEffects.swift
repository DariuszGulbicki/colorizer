extension String {

    public func applyEffect(_ effect: EffectEscapeCode) -> String {
        return Colorizer.colorize(self, effect)
    }

    public func applyEffects(_ effects: [EffectEscapeCode]) -> String {
        return Colorizer.colorize(self, effects)
    }

    public func applyEffects(_ effects: EffectEscapeCode...) -> String {
        return Colorizer.colorize(self, effects)
    }

    public func rainbow(_ effects: [EffectEscapeCode]) -> String {
        return Colorizer.rainbow(self, effects)
    }

    public func rainbow(_ effects: [[EffectEscapeCode]]) -> String {
        return Colorizer.rainbow(self, effects)
    }

    public func rainbow(_ effects: EffectEscapeCode...) -> String {
        return Colorizer.rainbow(self, effects)
    }

    public func rainbow(_ effects: [EffectEscapeCode]...) -> String {
        return Colorizer.rainbow(self, effects)
    }

    public func reset() -> String {
        return self.applyEffect(.reset)
    }

    public func bold() -> String {
        return self.applyEffect(.bold)
    }

    public func dim() -> String {
        return self.applyEffect(.dim)
    }

    public func italic() -> String {
        return self.applyEffect(.italic)
    }

    public func underline() -> String {
        return self.applyEffect(.underline)
    }

    public func inverse() -> String {
        return self.applyEffect(.inverse)
    }

    public func hidden() -> String {
        return self.applyEffect(.hidden)
    }

    public func strikethrough() -> String {
        return self.applyEffect(.strikethrough)
    }

    public func black() -> String {
        return self.applyEffect(.black)
    }

    public func red() -> String {
        return self.applyEffect(.red)
    }

    public func green() -> String {
        return self.applyEffect(.green)
    }

    public func yellow() -> String {
        return self.applyEffect(.yellow)
    }

    public func blue() -> String {
        return self.applyEffect(.blue)
    }

    public func magenta() -> String {
        return self.applyEffect(.magenta)
    }

    public func cyan() -> String {
        return self.applyEffect(.cyan)
    }

    public func white() -> String {
        return self.applyEffect(.white)
    }

    public func blackBackground() -> String {
        return self.applyEffect(.backgroundBlack)
    }

    public func redBackground() -> String {
        return self.applyEffect(.backgroundRed)
    }

    public func greenBackground() -> String {
        return self.applyEffect(.backgroundGreen)
    }

    public func yellowBackground() -> String {
        return self.applyEffect(.backgroundYellow)
    }

    public func blueBackground() -> String {
        return self.applyEffect(.backgroundBlue)
    }

    public func magentaBackground() -> String {
        return self.applyEffect(.backgroundMagenta)
    }

    public func cyanBackground() -> String {
        return self.applyEffect(.backgroundCyan)
    }

    public func whiteBackground() -> String {
        return self.applyEffect(.backgroundWhite)
    }

    public func brightBlack() -> String {
        return self.applyEffect(.brightBlack)
    }

    public func brightRed() -> String {
        return self.applyEffect(.brightRed)
    }

    public func brightGreen() -> String {
        return self.applyEffect(.brightGreen)
    }

    public func brightYellow() -> String {
        return self.applyEffect(.brightYellow)
    }

    public func brightBlue() -> String {
        return self.applyEffect(.brightBlue)
    }

    public func brightMagenta() -> String {
        return self.applyEffect(.brightMagenta)
    }

    public func brightCyan() -> String {
        return self.applyEffect(.brightCyan)
    }

    public func brightWhite() -> String {
        return self.applyEffect(.brightWhite)
    }

    public func brightBlackBackground() -> String {
        return self.applyEffect(.backgroundBrightBlack)
    }

    public func brightRedBackground() -> String {
        return self.applyEffect(.backgroundBrightRed)
    }

    public func brightGreenBackground() -> String {
        return self.applyEffect(.backgroundBrightGreen)
    }

    public func brightYellowBackground() -> String {
        return self.applyEffect(.backgroundBrightYellow)
    }

    public func brightBlueBackground() -> String {
        return self.applyEffect(.backgroundBrightBlue)
    }

    public func brightMagentaBackground() -> String {
        return self.applyEffect(.backgroundBrightMagenta)
    }

    public func brightCyanBackground() -> String {
        return self.applyEffect(.backgroundBrightCyan)
    }

    public func brightWhiteBackground() -> String {
        return self.applyEffect(.backgroundBrightWhite)
    }
    
}