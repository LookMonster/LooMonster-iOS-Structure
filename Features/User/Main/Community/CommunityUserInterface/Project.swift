import ProjectDescription
import ProjectDescriptionHelpers
import UtilityPlugin

let project = Project.invertedDualTargetProjectWithDemoApp(
    name: "CommunityUserInterface",
    platform: .iOS,
    iOSTargetVersion: "15.0.0",
    interfaceDependencies: [
        .ThirdParty.RIBs,
        .ThirdParty.SnapKit

//        .ThirdParty.RxSwift,
//        .ThirdParty.RxRelay,
//        .Core.RIBsUtil,
//        .Feature.Finance.Data.Interface,
//        .Feature.Transport.UserInterface.Interface,
    ],
    implementDependencies: [
        .ThirdParty.RIBs,
//        .ThirdParty.RxSwift,
//        .ThirdParty.RxRelay,
        
        .Core.RIBsUtil,
        .Core.SuperUI,
        
        .Feature.Finance.Data.Interface,
        .Feature.Transport.UserInterface.Interface,
        .ThirdParty.SnapKit
    ]
)

