import Vapor

func routes(_ app: Application) throws {
    //Responds to /
    app.get { req async in
        "It works!"
    }

    //Responds to GET /hello
    app.get("hello") { req async -> String in
        "Hello, world!"
    }
    
    //Responds to GET /first-website
    app.get("first-website") { req async -> String in
        "Congratulations... your first website"
    }
    
    //GET with paramater, responds to /namaste/<any name>
    app.get("namaste", ":name") { req async -> String in
        let name = req.parameters.get("name")!
        return "Namaster, \(name)"
    }
    
    //Responds to GET /first/website/vapor
    app.get("first", "website", "vapor") { req async -> String in
        "Great Achievement in life.\n\nI am doing it now.\nI am doing it today.\nIt is Done."
    }
    
    //Responds to GET /coding/swift/vapor
    //Responds to GET /coding/web/development/swift
    app.get("coding", "**") { req -> String in
        let name = req.parameters.getCatchall().joined(separator: " ")
        return "Coding \(name)"
    }
}
