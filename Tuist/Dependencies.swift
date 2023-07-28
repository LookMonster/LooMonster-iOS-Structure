import ProjectDescription

let spm = SwiftPackageManagerDependencies(
    [
        .remote(url: "https://github.com/ReactiveX/RxSwift", requirement: .upToNextMajor(from: "6.5.0")),
        .remote(url: "https://github.com/uber/RIBs", requirement: .upToNextMajor(from: "0.13.0")),
        //    .remote(url: "https://github.com/RxSwiftCommunity/RxGesture", requirement: .upToNextMinor(from: "4.0.0")),
            .remote(url: "https://github.com/SnapKit/SnapKit", requirement: .upToNextMajor(from: "5.0.0")),
        //    .remote(url: "https://github.com/onevcat/Kingfisher", requirement: .upToNextMajor(from: "7.0")),
    ],
    productTypes: [
        "RIBs": .framework,
        "RxSwift": .framework,
        "RxCocoa": .framework,
        "RxRelay": .framework,
        "SnapKit": .framework
//        "RxGesture": .framework,
//        "SnapKit": .framework,
//        "Kingfisher": .framework
    ]
)

let dependencies = Dependencies(
    swiftPackageManager: spm,
    platforms: [.iOS]
)


//import ProjectDescription
//
//let spm = SwiftPackageManagerDependencies(
//    [
//        .remote(url: "https://github.com/ReactiveX/RxSwift", requirement: .upToNextMajor(from: "6.5.0")),
//        .remote(url: "https://github.com/uber/RIBs", requirement: .upToNextMajor(from: "0.13.0")),
//        .remote(url: "https://github.com/SnapKit/SnapKit", requirement: .upToNextMajor(from: "5.0.0")),
//        .remote(url: "https://github.com/onevcat/Kingfisher", requirement: .upToNextMajor(from: "7.0")),
//        .remote(url: "https://github.com/Moya/Moya", requirement: .upToNextMajor(from: "15.0.0")),
//        .remote(url: "https://github.com/Alamofire/Alamofire", requirement: .upToNextMajor(from: "5.6.4")),
//        .remote(url: "https://github.com/devxoul/Then", requirement: .upToNextMajor(from: "3.0.0")),
//    ],
//    productTypes: [
//        "RIBs": .framework,
//        "RxSwift": .framework,
//        "RxCocoa": .framework,
//        "RxRelay": .framework,
//        "SnapKit": .framework,
//        "Kingfisher": .framework,
//        "Alamofire": .framework,
//        "Then": .framework
//    ]
//)
//
//let dependencies = Dependencies(
//    swiftPackageManager: spm,
//    platforms: [.iOS]
//)
