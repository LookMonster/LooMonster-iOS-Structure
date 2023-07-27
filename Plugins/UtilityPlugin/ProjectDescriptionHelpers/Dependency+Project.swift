import Foundation
import ProjectDescription

// MARK: Project
extension TargetDependency {
    public struct Feature {
        public struct Finance {
            public struct Data {}
            public struct Domain {}
            public struct UserInterface {}
        }
        
        public struct Transport {
            public struct Data {}
            public struct Domain {}
            public struct UserInterface {}
        }
        
        public struct Home {
            public struct Data {}
            public struct Domain {}
            public struct UserInterface {}
        }
        
        public struct BaseDependency {}
        
        public struct Login {
            public struct Data {}
            public struct Domain {}
            public struct UserInterface {}
        }
        
        public struct SignUp {
            public struct Data {}
            public struct Domain {}
            public struct UserInterface {}
        }
        
        public struct OtherProfile {
            public struct Data {}
            public struct Domain {}
            public struct UserInterface {}
        }
        
        public struct UserProfile {
            public struct Data {}
            public struct Domain {}
            public struct UserInterface {}
        }
        
        public struct VendorProfile {
            public struct Data {}
            public struct Domain {}
            public struct UserInterface {}
        }
    }
    
    public struct Core {
        
    }
    
    public struct LKNetwork {}
    
    public struct ResourceKit {}

    public struct ThirdParty {}
}

public extension TargetDependency.Core {
    static let folderName = "Core"
    static func project(name: String, isInterface: Bool) -> TargetDependency {
        let postfix: String = isInterface ? "" : "Impl"
        return .project(target: "\(name)\(postfix)",
                        path: .relativeToRoot("\(folderName)"))
    }

//    static let Interface = project(name: "Core", isInterface: true)
//    static let Implement = project(name: "Core", isInterface: false)
    
    static let DefaultsStore = project(name: "DefaultsStore", isInterface: true)
    static let RIBsUtil = project(name: "RIBsUtil", isInterface: true)
    static let SuperUI = project(name: "SuperUI", isInterface: true)
}

public extension TargetDependency.ResourceKit {
    static let folderName = "ResourceKit"
    static func project(name: String) -> TargetDependency {
        return .project(target: "\(name)",
                        path: .relativeToRoot("\(folderName)"))
    }

    static let Implement = project(name: "ResourceKit")
}

// MARK: - Features/User/Finance
public extension TargetDependency.Feature.Finance {
    static let folderName = "Finance"
    static func project(name: String, isInterface: Bool) -> TargetDependency {
        let postfix: String = isInterface ? "" : "Impl"
        return .project(target: "\(folderName)\(name)\(postfix)",
                        path: .relativeToRoot("Features/User/\(folderName)/\(folderName)\(name)"))
    }
}

public extension TargetDependency.Feature.Finance.UserInterface {
    static let Interface = TargetDependency.Feature.Finance.project(name: "UserInterface", isInterface: true)
    static let Implement = TargetDependency.Feature.Finance.project(name: "UserInterface", isInterface: false)
}

public extension TargetDependency.Feature.Finance.Domain {
    static let Interface = TargetDependency.Feature.Finance.project(name: "Domain", isInterface: true)
    static let Implement = TargetDependency.Feature.Finance.project(name: "Domain", isInterface: false)
}

public extension TargetDependency.Feature.Finance.Data {
    static let Interface = TargetDependency.Feature.Finance.project(name: "Data", isInterface: true)
    static let Implement = TargetDependency.Feature.Finance.project(name: "Data", isInterface: false)
}

// MARK: - Features/User/Transport
public extension TargetDependency.Feature.Transport {
    static let folderName = "Transport"
    static func project(name: String, isInterface: Bool) -> TargetDependency {
        let postfix: String = isInterface ? "" : "Impl"
        return .project(target: "\(folderName)\(name)\(postfix)",
                        path: .relativeToRoot("Features/User/\(folderName)/\(folderName)\(name)"))
    }
}

public extension TargetDependency.Feature.Transport.UserInterface {
    static let Interface = TargetDependency.Feature.Transport.project(name: "UserInterface", isInterface: true)
    static let Implement = TargetDependency.Feature.Transport.project(name: "UserInterface", isInterface: false)
}

public extension TargetDependency.Feature.Transport.Domain {
    static let Interface = TargetDependency.Feature.Transport.project(name: "Domain", isInterface: true)
    static let Implement = TargetDependency.Feature.Transport.project(name: "Domain", isInterface: false)
}

public extension TargetDependency.Feature.Transport.Data {
    static let Interface = TargetDependency.Feature.Transport.project(name: "Data", isInterface: true)
    static let Implement = TargetDependency.Feature.Transport.project(name: "Data", isInterface: false)
}

// MARK: - Features/User/Home
public extension TargetDependency.Feature.Home {
    static let folderName = "Home"
    static func project(name: String, isInterface: Bool) -> TargetDependency {
        let postfix: String = isInterface ? "" : "Impl"
        return .project(target: "\(folderName)\(name)\(postfix)",
                        path: .relativeToRoot("Features/User/Main/\(folderName)/\(folderName)\(name)"))
    }}

public extension TargetDependency.Feature.Home.UserInterface {
    static let Interface = TargetDependency.Feature.Home.project(name: "UserInterface", isInterface: true)
    static let Implement = TargetDependency.Feature.Home.project(name: "UserInterface", isInterface: false)
}

public extension TargetDependency.Feature.Home.Domain {
    static let Interface = TargetDependency.Feature.Home.project(name: "Domain", isInterface: true)
    static let Implement = TargetDependency.Feature.Home.project(name: "Domain", isInterface: false)
}

public extension TargetDependency.Feature.Home.Data {
    static let Interface = TargetDependency.Feature.Home.project(name: "Data", isInterface: true)
    static let Implement = TargetDependency.Feature.Home.project(name: "Data", isInterface: false)
}

//MARK: - Features/User/Auth/Login
public extension TargetDependency.Feature.Login {
    static let folderName = "Login"
    static func project(name: String, isInterface: Bool) -> TargetDependency {
        let postfix: String = isInterface ? "" : "Impl"
        return .project(target: "\(folderName)\(name)\(postfix)",
                        path: .relativeToRoot("Features/User/Auth/\(folderName)/\(folderName)\(name)"))
    }}

public extension TargetDependency.Feature.Login.UserInterface {
    static let Interface = TargetDependency.Feature.Home.project(name: "UserInterface", isInterface: true)
    static let Implement = TargetDependency.Feature.Home.project(name: "UserInterface", isInterface: false)
}

public extension TargetDependency.Feature.Login.Domain {
    static let Interface = TargetDependency.Feature.Home.project(name: "Domain", isInterface: true)
    static let Implement = TargetDependency.Feature.Home.project(name: "Domain", isInterface: false)
}

public extension TargetDependency.Feature.Login.Data {
    static let Interface = TargetDependency.Feature.Home.project(name: "Data", isInterface: true)
    static let Implement = TargetDependency.Feature.Home.project(name: "Data", isInterface: false)
}

//MARK: - Features/User/Auth/SignUp
public extension TargetDependency.Feature.SignUp {
    static let folderName = "SignUp"
    static func project(name: String, isInterface: Bool) -> TargetDependency {
        let postfix: String = isInterface ? "" : "Impl"
        return .project(target: "\(folderName)\(name)\(postfix)",
                        path: .relativeToRoot("Features/User/Auth/\(folderName)/\(folderName)\(name)"))
    }}

public extension TargetDependency.Feature.SignUp.UserInterface {
    static let Interface = TargetDependency.Feature.SignUp.project(name: "UserInterface", isInterface: true)
    static let Implement = TargetDependency.Feature.SignUp.project(name: "UserInterface", isInterface: false)
}

public extension TargetDependency.Feature.SignUp.Domain {
    static let Interface = TargetDependency.Feature.SignUp.project(name: "Domain", isInterface: true)
    static let Implement = TargetDependency.Feature.SignUp.project(name: "Domain", isInterface: false)
}

public extension TargetDependency.Feature.SignUp.Data {
    static let Interface = TargetDependency.Feature.SignUp.project(name: "Data", isInterface: true)
    static let Implement = TargetDependency.Feature.SignUp.project(name: "Data", isInterface: false)
}

//MARK: - Features/User/Profile/VendorProfile
public extension TargetDependency.Feature.VendorProfile {
    static let folderName = "VendorProfile"
    static func project(name: String, isInterface: Bool) -> TargetDependency {
        let postfix: String = isInterface ? "" : "Impl"
        return .project(target: "\(folderName)\(name)\(postfix)",
                        path: .relativeToRoot("Features/User/Profile/\(folderName)/\(folderName)\(name)"))
    }}

public extension TargetDependency.Feature.VendorProfile.UserInterface {
    static let Interface = TargetDependency.Feature.VendorProfile.project(name: "UserInterface", isInterface: true)
    static let Implement = TargetDependency.Feature.VendorProfile.project(name: "UserInterface", isInterface: false)
}

public extension TargetDependency.Feature.VendorProfile.Domain {
    static let Interface = TargetDependency.Feature.VendorProfile.project(name: "Domain", isInterface: true)
    static let Implement = TargetDependency.Feature.VendorProfile.project(name: "Domain", isInterface: false)
}

public extension TargetDependency.Feature.VendorProfile.Data {
    static let Interface = TargetDependency.Feature.VendorProfile.project(name: "Data", isInterface: true)
    static let Implement = TargetDependency.Feature.VendorProfile.project(name: "Data", isInterface: false)
}

//MARK: - Features/User/Profile/OtherProfile
public extension TargetDependency.Feature.OtherProfile {
    static let folderName = "OtherProfile"
    static func project(name: String, isInterface: Bool) -> TargetDependency {
        let postfix: String = isInterface ? "" : "Impl"
        return .project(target: "\(folderName)\(name)\(postfix)",
                        path: .relativeToRoot("Features/User/Profile/\(folderName)/\(folderName)\(name)"))
    }}

public extension TargetDependency.Feature.OtherProfile.UserInterface {
    static let Interface = TargetDependency.Feature.OtherProfile.project(name: "UserInterface", isInterface: true)
    static let Implement = TargetDependency.Feature.OtherProfile.project(name: "UserInterface", isInterface: false)
}

public extension TargetDependency.Feature.OtherProfile.Domain {
    static let Interface = TargetDependency.Feature.OtherProfile.project(name: "Domain", isInterface: true)
    static let Implement = TargetDependency.Feature.OtherProfile.project(name: "Domain", isInterface: false)
}

public extension TargetDependency.Feature.OtherProfile.Data {
    static let Interface = TargetDependency.Feature.OtherProfile.project(name: "Data", isInterface: true)
    static let Implement = TargetDependency.Feature.OtherProfile.project(name: "Data", isInterface: false)
}

//MARK: - Features/User/Profile/UserProfile
public extension TargetDependency.Feature.UserProfile {
    static let folderName = "UserProfile"
    static func project(name: String, isInterface: Bool) -> TargetDependency {
        let postfix: String = isInterface ? "" : "Impl"
        return .project(target: "\(folderName)\(name)\(postfix)",
                        path: .relativeToRoot("Features/User/Profile/\(folderName)/\(folderName)\(name)"))
    }}

public extension TargetDependency.Feature.UserProfile.UserInterface {
    static let Interface = TargetDependency.Feature.UserProfile.project(name: "UserInterface", isInterface: true)
    static let Implement = TargetDependency.Feature.UserProfile.project(name: "UserInterface", isInterface: false)
}

public extension TargetDependency.Feature.UserProfile.Domain {
    static let Interface = TargetDependency.Feature.UserProfile.project(name: "Domain", isInterface: true)
    static let Implement = TargetDependency.Feature.UserProfile.project(name: "Domain", isInterface: false)
}

public extension TargetDependency.Feature.UserProfile.Data {
    static let Interface = TargetDependency.Feature.UserProfile.project(name: "Data", isInterface: true)
    static let Implement = TargetDependency.Feature.UserProfile.project(name: "Data", isInterface: false)
}


// MARK: - Network
public extension TargetDependency.LKNetwork {
    static let folderName = "LKNetwork"
    static func project(name: String, isInterface: Bool) -> TargetDependency {
        let postfix: String = isInterface ? "" : "Impl"
        return .project(
            target: "\(name)\(postfix)",
            path: .relativeToRoot("LKNetwork")
        )
    }
    
    static let Interface = project(name: "LKNetwork", isInterface: true)
    static let Implement = project(name: "LKNetwork", isInterface: false)
}

// MARK: - ThirdParty

public extension TargetDependency.ThirdParty {
    static let base = [
        RxSwift,
        RIBs,
    ]
    
    static let RxSwift = TargetDependency.external(name: "RxSwift")
    static let RxRelay = TargetDependency.external(name: "RxRelay")
    static let RxCocoa = TargetDependency.external(name: "RxCocoa")
    static let RIBs = TargetDependency.external(name: "RIBs")
    static let RxGesture = TargetDependency.external(name: "RxGesture")
    static let SnapKit = TargetDependency.external(name: "SnapKit")
    static let Kingfisher = TargetDependency.external(name: "Kingfisher")
}
