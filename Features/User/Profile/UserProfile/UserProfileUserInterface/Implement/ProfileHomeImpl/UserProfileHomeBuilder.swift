import RIBs
import ProfileUserInterface

public protocol UserProfileHomeDependency: Dependency {
    // TODO: Declare the set of dependencies required by this RIB, but cannot be
    // created by this RIB.
}

final class UserProfileHomeComponent: Component<ProfileHomeDependency> {
    
    // TODO: Declare 'fileprivate' dependencies that are only used by this RIB.
}

// MARK: - Builder

public final class UserProfileHomeBuilder: Builder<ProfileHomeDependency>, ProfileHomeBuildable {
    
    public override init(dependency: ProfileHomeDependency) {
        super.init(dependency: dependency)
    }
    
    public func build(withListener listener: ProfileHomeListener) -> ViewableRouting {
        let _ = ProfileHomeComponent(dependency: dependency)
        let viewController = UserProfileHomeViewController()
        let interactor = UserProfileHomeInteractor(presenter: viewController)
        interactor.listener = listener
        return UserProfileHomeRouter(interactor: interactor, viewController: viewController)
    }
}
