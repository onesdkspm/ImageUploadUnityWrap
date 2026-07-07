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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/ImageUploadUnityWrap/2.0.2/ImageUploadUnityWrap.xcframework.zip",
            checksum: "b9518f15cb3c55efb865b2212ea83822476a59fdff67717752bf54a092d12039"
        ),
        .binaryTarget(
            name: "QCloudCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/ImageUploadUnityWrap/2.0.2/QCloudCore.xcframework.zip",
            checksum: "5ca79a90f122c974233faf822187a7358b7eeb1f5aa796b73339ff729a3e4966"
        ),
        .binaryTarget(
            name: "QCloudCOSXML",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/ImageUploadUnityWrap/2.0.2/QCloudCOSXML.xcframework.zip",
            checksum: "7c174693da52ef56e259abb407cd7f7aba1cac57c0ec841edcef165d490c94d6"
        )
    ]
)
