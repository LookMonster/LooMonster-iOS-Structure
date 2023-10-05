import ProjectDescription
import ProjectDescriptionHelpers
import UtilityPlugin

let project = Project(name: "Core",
                      targets: [
                        Project.makeTarget(
                            name: "CSLogger",
                            dependencies: []
                        ),
                        Project.makeTarget(
                            name: "DefaultsStore",
                            dependencies: [
                            ]
                        ),
                        Project.makeTarget(
                            name: "SuperUI",
                            dependencies: [
                                .ThirdParty.SPM.RIBs,
                                .Core.RIBsUtil,
                                .ThirdParty.SPM.RxCocoa,
                                .ThirdParty.SPM.RxSwift,
                                .ThirdParty.SPM.SnapKit,
                                .ThirdParty.SPM.Then,
                                .DesignSystem.Implement,
                                .ThirdParty.SPM.Swinject
                            ]
                        ),
                        Project.makeTarget(
                            name: "RIBsUtil",
                            dependencies: [
                                .ThirdParty.SPM.RIBs,
                                .ThirdParty.SPM.Swinject
                            ]
                        )
                      ]
)
