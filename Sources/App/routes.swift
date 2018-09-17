import Vapor

/// Register your application's routes here.
public func routes(_ router: Router) throws {
    router.get("Name") { req in
        return "Robert Pecoraro"
    }
    router.get("age") { req in
        return 31
    }
    router.get("json") { req in
        return Person(name: "Robert Pecoraro", age: 31)
    }
}


// Creating Struct
struct Person: Content {
    var name: String
    var age: Int
}

