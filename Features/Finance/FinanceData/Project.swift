import ProjectDescription
import ProjectDescriptionHelpers
import UtilityPlugin

let project = Project.invertedDualTargetProject(
    name: "FinanceData",
    platform: .iOS,
    iOSTargetVersion: "15.0.0",
    interfaceDependencies: [
        .CSNetwork.Interface,
        
        .ThirdParty.RxSwift,
        .ThirdParty.RxRelay,
        
        .Feature.Finance.Domain.Interface,
        
    ],
    implementDependencies: [
        .CSNetwork.Interface,
        
        .ThirdParty.RxSwift,
        .ThirdParty.RxRelay,
        
        .Feature.Finance.Domain.Interface,
    ]
)
