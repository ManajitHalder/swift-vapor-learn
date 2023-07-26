import Vapor

struct HelloCommand: Command {
    struct Signature: CommandSignature { }
    
    var help: String {
        "Says hello"
    }
        
    func run(using context: ConsoleKit.CommandContext, signature: Signature) throws {
        context.console.print("Hello Vapor programmer!")
    }
}
