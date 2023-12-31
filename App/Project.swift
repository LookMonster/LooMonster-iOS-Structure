import ProjectDescription
import ProjectDescriptionHelpers
import UtilityPlugin

let project = Project(
    // 자신의 앱 이름을 넣어주세요
    name: "App",
    targets: [
        Target(
            name: "App",
            platform: .iOS,
            product: .app,
            bundleId: "com.monster.lookMonster",
            infoPlist: InfoPlist.extendingDefault(
                with:
                    [
                        "CFBundleDevelopmentRegion": "ko_KR",
                        "CFBundleShortVersionString": "1.0",
                        "CFBundleVersion": "1",
                        "UILaunchStoryboardName": "LaunchScreen"
                    ]
                
            ),
            sources: ["Sources/**"],
            resources: ["Resources/**"],
            dependencies: [
                .ThirdParty.SPM.RIBs,
                .LKNetwork.Implement,
                .LKNetwork.Interface,
                
                .ThirdParty.SPM.Swinject,
                .Features.User.Profile.UserProfile.UserInterface.Interface,
                .Features.User.Profile.UserProfile.UserInterface.Implement,
                .Features.User.Profile.UserProfile.UserInterface.Interface,
                

                .Features.User.Main.Home.UserInterface.Interface,
                
                .Features.User.Main.Home.UserInterface.Implement,
                                
                //style
                .Features.User.Main.Style.Domain.Implement,
                .Features.User.Main.Style.Data.Implement,
                .Features.User.Main.Style.UserInterface.Implement,
                
                .Features.User.Main.Style.Domain.Interface,
                .Features.User.Main.Style.Data.Interface,
                .Features.User.Main.Style.UserInterface.Interface,
                
                //Community
                .Features.User.Main.Community.Domain.Implement,
                .Features.User.Main.Community.Data.Implement,
                .Features.User.Main.Community.UserInterface.Implement,

                .Features.User.Main.Community.Domain.Interface,
                .Features.User.Main.Community.Data.Interface,
                .Features.User.Main.Community.UserInterface.Interface,
//
                //Shop
                .Features.User.Main.Shop.Domain.Implement,
                .Features.User.Main.Shop.Data.Implement,
                .Features.User.Main.Shop.UserInterface.Implement,

                .Features.User.Main.Shop.Domain.Interface,
                .Features.User.Main.Shop.Data.Interface,
                .Features.User.Main.Shop.UserInterface.Interface
            ]
        )
    ]
)

let settings: Settings = .settings(
    base:
            .init().setCodeSignManualForApp(),
    debug:
            .init().setProvisioningDevelopment(),
    release:
            .init().setProvisioningAppstore(),
    defaultSettings: .recommended
)
