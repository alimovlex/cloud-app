// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "cloud-app",
    dependencies: [
      .package(url: "https://github.com/Kitura-Next/Kitura.git", from: "2.8.0"),
      .package(url: "https://github.com/Kitura-Next/HeliumLogger.git", from: "1.7.1"),
      .package(url: "https://github.com/Kitura-Next/CloudEnvironment.git", from: "9.0.0"),
      .package(url: "https://github.com/Kitura-Next/SwiftMetrics.git", from: "2.0.0"),
      .package(url: "https://github.com/Kitura-Next/Health.git", from: "1.0.0"),
    ],
    targets: [
      .target(name: "cloud-app", dependencies: [ .target(name: "Application") ]),
      .target(name: "Application", dependencies: [ "Kitura", "HeliumLogger", "CloudEnvironment","SwiftMetrics", "Health", 

      ]),

      .testTarget(name: "ApplicationTests" , dependencies: [.target(name: "Application"), "Kitura", "HeliumLogger" ])
    ]
)
