import Vapor
import Fluent

/// Register your application's routes here.
public func routes(_ router: Router) throws {
  // Basic "Hello, world!" example
  router.get { req in
    return "Hello, world!"
  }
  
  let acronymsController = AcronymsController()
  let usersController = UsersController()
  let categoriesController = CategoriesController()
  
  try router.register(collection: acronymsController)
  try router.register(collection: usersController)
  try router.register(collection: categoriesController)
}
