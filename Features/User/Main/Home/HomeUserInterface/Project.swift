//
//  HomeAppDelegate.swift
//
//  ModulariedSuperApp
//
//  Created by 김찬수
//

import ProjectDescription
import ProjectDescriptionHelpers
import UtilityPlugin

let project = Project.invertedDualTargetProjectWithDemoApp(
    name: "HomeUserInterface",
    platform: .iOS,
    iOSTargetVersion: "15.0.0",
    interfaceDependencies: [
        .ThirdParty.SPM.RIBs,
        .ThirdParty.SPM.SnapKit,
//        .ThirdParty.RxSwift,
//        .ThirdParty.RxRelay,
//        .Core.RIBsUtil,
//        .Feature.Finance.Data.Interface,
//        .Feature.Transport.UserInterface.Interface,
        
        .Core.RIBsUtil,
        .ThirdParty.SPM.RIBs,
        .TokenManager.Interface
    ],
    implementDependencies: [
        .ThirdParty.SPM.RIBs,
//        .ThirdParty.RxSwift,
//        .ThirdParty.RxRelay,
        
        .Core.RIBsUtil,
        .Core.SuperUI,
        
        .ThirdParty.SPM.RIBs,
        .ThirdParty.SPM.RxSwift,
        .ThirdParty.SPM.RxRelay,
        .ThirdParty.SPM.SnapKit,
        .ThirdParty.SPM.SkeletonView,
        .DesignSystem.Implement
    ],
    demoAppDependencies: [
        .Features.User.Main.Home.Data.Implement,
        .Features.User.Main.Home.Domain.Implement,
        .Features.User.Main.Home.UserInterface.Implement,
        .Features.User.Main.Home.UserInterface.Interface,
        .LKNetwork.Implement,
        .TokenManager.Implement
    ],
    isUserInterface: true
)

