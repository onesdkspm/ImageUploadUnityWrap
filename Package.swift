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
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/ImageUploadUnityWrap/1.0.5-dev-1478280/ImageUploadUnityWrap.xcframework.zip",
            checksum: "22c0d77bef4989276aaec481e05f973e585c83b06f50db9b2fee9ebcc514f819"
        ),
        .binaryTarget(
            name: "QCloudCore",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/ImageUploadUnityWrap/1.0.5-dev-1478280/QCloudCore.xcframework.zip",
            checksum: "699b795f042b4bc2e36cda2e136dbaa0c07fdc86342ad66238dc2cbee657fe1d"
        ),
        .binaryTarget(
            name: "QCloudCOSXML",
            url: "https://yw-depot-nexus.100bt.com/repository/onesdk-ios-trunk/spm/ImageUploadUnityWrap/1.0.5-dev-1478280/QCloudCOSXML.xcframework.zip",
            checksum: "2b1ae1974f00c74d1ec1ff22c39122c04ad3c79455a139c06ee50ee61fc20bef"
        )
    ]
)
