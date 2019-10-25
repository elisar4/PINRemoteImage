// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PINRemoteImage",
    platforms: [
        .iOS(.v10)
    ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "PINRemoteImage",
            targets: ["PINRemoteImage"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/elisar4/PINCache.git", .revision("4e7637223621cad3ac799ceb9112fdc4ead26d58")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "PINRemoteImage",
            dependencies: ["PINCache"],
            path: ".",
            sources: ["Source"],
            cxxSettings: [
                .headerSearchPath("."),
                .headerSearchPath("Source/Classes"),
                .headerSearchPath("Source/Classes/AnimatedImages"),
                .headerSearchPath("Source/Classes/Categories"),
                .headerSearchPath("Source/Classes/ImageCategories"),
                .headerSearchPath("Source/Classes/PINCache")
            ]
        )
    ],
    cxxLanguageStandard: .cxx14
)
