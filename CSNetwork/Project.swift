import ProjectDescription
import ProjectDescriptionHelpers
import UtilityPlugin

let project = Project.invertedDualTargetProject(
    name: "CSNetwork",
    platform: .iOS,
    iOSTargetVersion: "15.0.0",
    interfaceDependencies: [
        .ThirdParty.RxSwift,
//        .ThirdParty.RxCocoa,
    ],
    implementDependencies: [
        .ThirdParty.RxSwift,
        .ThirdParty.RxCocoa,
    ]
)
