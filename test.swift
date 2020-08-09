import SwiftUI

class User: ObservableObject {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class Users: ObservableObject {
    @Published var users = [User(name: "mem"), User(name: "kek")]
}
