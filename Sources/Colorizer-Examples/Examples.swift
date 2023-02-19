import Colorizer

@main
public struct Exampes {

    public static func main() {
        let arguments = CommandLine.arguments
        if (arguments.count != 2) {
            wrongArguments()
            return
        }
        let example = arguments[1]
        switch example {
            case "readme":
                readme()
            case "logo":
                logo()
            default:
                exampleNotFound(example)
        }
    }

    private static func exampleNotFound(_ example: String) {
        print("Couldnt find example: ".red().bold() + Colorizer.colorize(example, .brightYellow, .italic))
    }

    private static func wrongArguments() {
        print("Wrong arguments!   ".red().bold() + Colorizer.colorize("Use: Examples <example>", .dim, .white, .bold, .italic))
    }

    private static func readme() {
        print("Hello, world!".applyEffect(.bold))
        print("Hello, world!".bold())
        print("Hello, world!".applyEffects([.red, .bold, .underline]))
        print("Hello, world!".red().bold().underline())
        print(Colorizer.colorize("Hello, world!", .red))
        print(Colorizer.colorize("Hello, world!", .bold, .underline))
        let colorizer = Colorizer()
        print(colorizer.format("&(bold)&(underline)&(yellow)Hello,&(reset) &(bold)&(underline)&(green)world!&(reset)"))
        print(Colorizer.rainbow("This is just a test!"))
        print(Colorizer.rainbow("Hello, World!", .brightRed, .brightGreen, .brightWhite))
        print(Colorizer.rainbow("Hello, World!", [[.bold, .underline, .red], [.bold, .underline, .green], [.bold, .underline, .white]]))
    }

    private static func logo() {
        let colorizer = Colorizer()
        print(Colorizer.rainbow(
                "  /$$$$$$            /$$                     /$$                              " + "\n" +
                " /$$__  $$          | $$                    |__/                              " + "\n" +
                "| $$  \\__/  /$$$$$$ | $$  /$$$$$$   /$$$$$$  /$$ /$$$$$$$$  /$$$$$$   /$$$$$$ " + "\n" +
                "| $$       /$$__  $$| $$ /$$__  $$ /$$__  $$| $$|____ /$$/ /$$__  $$ /$$__  $$" + "\n" +
                "| $$      | $$  \\ $$| $$| $$  \\ $$| $$  \\__/| $$   /$$$$/ | $$$$$$$$| $$  \\__/" + "\n" +
                "| $$    $$| $$  | $$| $$| $$  | $$| $$      | $$  /$$__/  | $$_____/| $$      " + "\n" +
                "|  $$$$$$/|  $$$$$$/| $$|  $$$$$$/| $$      | $$ /$$$$$$$$|  $$$$$$$| $$      " + "\n" +
                " \\______/  \\______/ |__/ \\______/ |__/      |__/|________/ \\_______/|__/      " + "\n" +
                "                                                                              " + "\n" +
                "                                                                              " + "\n" +
                "                                                                              ",
                [[.brightRed, .bold], [.brightGreen, .bold], [.brightBlue, .bold]])
        )
    }

}