import ProjectDescription
import ProjectDescriptionHelpers
import UtilityPlugin

let project = Project.invertedDualTargetProjectWithDemoApp(
    name: "SearchUserInterface",
    platform: .iOS,
    iOSTargetVersion: "15.0.0",
    interfaceDependencies: [        
        .Core.RIBsUtil,
        
        .ThirdParty.SPM.RIBs
    ],
    implementDependencies: [
        .Core.RIBsUtil,
        .Core.SuperUI,
        .Core.DefaultsStore,
        
        .ThirdParty.SPM.RIBs,
        .ThirdParty.SPM.RxSwift,
        .ThirdParty.SPM.RxRelay,
        .DesignSystem.Implement
    ]
)
