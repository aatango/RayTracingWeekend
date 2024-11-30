// swift-tools-version: 6.0

import PackageDescription

let package = Package(
  name: "RayTracingWeekend",
  products: [
    .library(
      name: "RayTracingWeekend",
      targets: ["RayTracingWeekend"]),
    .executable(
      name: "WeekendTracer",
      targets: ["WeekendTracer"]),
  ],
  dependencies: [
    .package(url: "https://github.com/apple/swift-log.git", from: "1.6.2")
  ],
  targets: [
    .target(
      name: "RayTracingWeekend"),
    .executableTarget(
      name: "WeekendTracer",
      dependencies: [
        "RayTracingWeekend",
        .product(name: "Logging", package: "swift-log"),
      ]),
    .testTarget(
      name: "RayTracingWeekendTests",
      dependencies: ["RayTracingWeekend"]
    ),
  ]
)
