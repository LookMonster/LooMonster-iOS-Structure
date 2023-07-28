import ProjectDescription
import ProjectDescriptionHelpers
import UtilityPlugin

let project = Project.invertedDualTargetProjectWithDemoApp(
    name: "OtherProfileUserInterface",
    platform: .iOS,
    iOSTargetVersion: "15.0.0",
    interfaceDependencies: [
        .ThirdParty.RIBs,
        .ThirdParty.SnapKit
    ],
    implementDependencies: [
        .ThirdParty.RIBs,
        .ThirdParty.SnapKit

    ]
)
