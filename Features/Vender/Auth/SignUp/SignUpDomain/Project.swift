import ProjectDescription
import ProjectDescriptionHelpers
import UtilityPlugin

let project = Project.invertedDualTargetProject(
    name: "signUpDomain",
    platform: .iOS,
    iOSTargetVersion: "15.0.0",
    interfaceDependencies: [
        .ThirdParty.RxSwift,
    ],
    implementDependencies: [
        .ThirdParty.RxSwift,
        .Feature.Finance.Data.Interface,
    ]
)