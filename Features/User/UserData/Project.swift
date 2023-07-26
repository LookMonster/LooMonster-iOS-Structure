//
//  Project.swift
//  ProjectDescriptionHelpers
//
//  Created by 박준하 on 2023/07/26.
//

import ProjectDescription
import ProjectDescriptionHelpers
import UtilityPlugin

let project = Project.invertedDualTargetProject(
    name: "UserData",
    platform: .iOS,
    iOSTargetVersion: "15.0.0",
    interfaceDependencies: [
        .LKNetwork.Interface,
        
        .ThirdParty.RxSwift,
        .ThirdParty.RxRelay,
        
        .Feature.Finance.Domain.Interface,
        
    ],
    implementDependencies: [
        .LKNetwork.Interface,
        
        .ThirdParty.RxSwift,
        .ThirdParty.RxRelay,
        
        .Feature.Finance.Domain.Interface,
    ]
)
