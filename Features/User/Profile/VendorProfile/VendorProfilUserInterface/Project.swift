import ProjectDescription
import ProjectDescriptionHelpers
import UtilityPlugin

let project = Project.invertedDualTargetProjectWithDemoApp(
    name: "VendorProfileUserInterface",
    platform: .iOS,
    iOSTargetVersion: "15.0.0",
    interfaceDependencies: [
        .ThirdParty.RIBs,
    ],
    implementDependencies: [
        .ThirdParty.RIBs,
    ]
)
