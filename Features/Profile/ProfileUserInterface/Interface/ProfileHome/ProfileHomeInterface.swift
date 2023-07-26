import Foundation
import RIBs

public protocol ProfileHomeBuildable: Buildable {
    func build(withListener listener: ProfileHomeListener) -> ViewableRouting
}

public protocol ProfileHomeListener: AnyObject {
  // TODO: Declare methods the interactor can invoke to communicate with other RIBs.
}
