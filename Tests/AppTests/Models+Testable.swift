@testable import App
import FluentPostgreSQL

extension User {
  static func create(name: String = "Luke", username: String = "lukes", on connection: PostgreSQLConnection) throws -> User {
    let user = User(name: name, username: username)
    return try user.save(on: connection).wait()
  }
}
