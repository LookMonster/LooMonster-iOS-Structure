import ProjectDescription
import ProjectDescriptionHelpers
import UtilityPlugin

let project = Project.invertedDualTargetProject(
    name: "SignUpData",
    platform: .iOS,
    iOSTargetVersion: "15.0.0",
    interfaceDependencies: [
        .LKNetwork.Interface,
        
        .ThirdParty.SPM.RxSwift,
        .ThirdParty.SPM.RxRelay
    ],
    implementDependencies: [
        .LKNetwork.Interface,
        
        .ThirdParty.SPM.RxSwift,
        .ThirdParty.SPM.RxRelay,
        
    ]
)
