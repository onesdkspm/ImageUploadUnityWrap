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
        .package(url: "https://github.com/onesdkspm/BTSimpleHTTPNetworking.git", from: "2.0.0"),
        .package(url: "https://github.com/onesdkspm/UnityBridge.git", from: "2.0.0"),
    ],
    targets: [
        // ========== Wrapper Target（统一管理系统依赖）==========
        .target(
            name: "ImageUploadUnityWrapWrapper",
            dependencies: [
                .byName(name: "ImageUploadUnityWrap"),
                .byName(name: "QCloudCOSXML"),
                .byName(name: "QCloudCore"),
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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/ImageUploadUnityWrap/2.0.0-dev-1406391/ImageUploadUnityWrap.xcframework.zip",
            checksum: "5b17b429bfa8bfc32fea536e12a20ce16ceaeb90e6c9adf28e33ada616ef3e91"
        ),
        .binaryTarget(
            name: "QCloudCOSXML",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/ImageUploadUnityWrap/2.0.0-dev-1406391/QCloudCOSXML.xcframework.zip",
            checksum: "01fda72e7f7a8aa1ada650248959558c71c61b0659998e01a7ff04b100df1500"
        ),
        .binaryTarget(
            name: "QCloudCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/ImageUploadUnityWrap/2.0.0-dev-1406391/QCloudCore.xcframework.zip",
            checksum: "de9e0308d47b988170cc0abe5c0ce8536bdd143325926f10aec2dffd2e495457"
        )
    ]
)
