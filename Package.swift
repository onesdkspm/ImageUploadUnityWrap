// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "ImageUploadUnityWrap",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "ImageUploadUnityWrap",
            targets: ["ImageUploadUnityWrapWrapper"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/onesdkspm/BTSimpleHTTPNetworking.git", from: "2.0.2"),
        .package(url: "https://github.com/onesdkspm/UnityBridge.git", from: "2.0.0"),
    ],
    targets: [
        // ========== Wrapper Target（统一管理系统依赖）==========
        .target(
            name: "ImageUploadUnityWrapWrapper",
            dependencies: [
                .byName(name: "ImageUploadUnityWrap"),
                .byName(name: "QCloudCore"),
                .byName(name: "QCloudCOSXML"),
                .product(name: "BTSimpleHTTPNetworking", package: "BTSimpleHTTPNetworking"),
                .product(name: "UnityBridge", package: "UnityBridge"),
            ],
            path: "ImageUploadUnityWrapWrapper",
            linkerSettings: [
                // iOS 系统框架
                
                // 系统库
            ]
        ),
        
        // ========== Binary Frameworks ==========
        .binaryTarget(
            name: "ImageUploadUnityWrap",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/ImageUploadUnityWrap/2.0.2-dev-1480327/ImageUploadUnityWrap.xcframework.zip",
            checksum: "b1936b4f0e51ae08ee32750da94b813bc74d98ba3bd2373b60a170f2f76b1fdf"
        ),
        .binaryTarget(
            name: "QCloudCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/ImageUploadUnityWrap/2.0.2-dev-1480327/QCloudCore.xcframework.zip",
            checksum: "d5c52fa3ac657610fc27f5bc6d7871958b6d9fd813b264a58f3914c850f93346"
        ),
        .binaryTarget(
            name: "QCloudCOSXML",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/ImageUploadUnityWrap/2.0.2-dev-1480327/QCloudCOSXML.xcframework.zip",
            checksum: "0dcc0bc9da9cefc3dde5279b6fbc99440ad838563f9c9f2a621c107d2e0828e6"
        )
    ]
)
