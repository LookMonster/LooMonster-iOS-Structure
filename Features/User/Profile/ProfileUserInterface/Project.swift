import ProjectDescription
import ProjectDescriptionHelpers
import UtilityPlugin

let project = Project.invertedDualTargetProjectWithDemoApp(
    name: "ProfileUserInterface",
    platform: .iOS,
    iOSTargetVersion: "15.0.0",
    interfaceDependencies: [
        .ThirdParty.RIBs,
    ],
    implementDependencies: [
        .ThirdParty.RIBs,
    ]
)
