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
        .package(url: "https://github.com/onesdkspm/BTSimpleHTTPNetworking.git", branch: "develop"),
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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/ImageUploadUnityWrap/1.0.5-dev-1478309/ImageUploadUnityWrap.xcframework.zip",
            checksum: "ff2ee71f85b53b88155c2bbdf152abd67d96bdc8e821f46b19b729cf196d4b25"
        ),
        .binaryTarget(
            name: "QCloudCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/ImageUploadUnityWrap/1.0.5-dev-1478309/QCloudCore.xcframework.zip",
            checksum: "93f888af27fcd478a4b45a46bd7f777e7b92deef790c33998854b81da32ea17b"
        ),
        .binaryTarget(
            name: "QCloudCOSXML",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/ImageUploadUnityWrap/1.0.5-dev-1478309/QCloudCOSXML.xcframework.zip",
            checksum: "6d708c819665447ee90add0eb5fb7051b89194baa8d610479298fd8cdc410b02"
        )
    ]
)
