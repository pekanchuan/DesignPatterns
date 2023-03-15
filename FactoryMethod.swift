import Foundation

protocol Projector {
    var currentPage: Int { get }

    func present(info: String)

    func sync(with projector: Projector)

    func update(with page: Int)
}

extension Projector {
    func sync(with projector: Projector) {
        projector.update(with: currentPage)
    }
}

protocol ProjectorFactory {
    func createProjector()

    func syncedProjector()
}