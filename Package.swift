// swift-tools-version: 6.0

import PackageDescription

let package = Package(
  name: "RayTracingWeekend",
  products: [
    .library(
      name: "RayTracingWeekend",
      targets: ["RayTracingWeekend"])
  ],
  targets: [
    .target(
      name: "RayTracingWeekend"),
    .testTarget(
      name: "RayTracingWeekendTests",
      dependencies: ["RayTracingWeekend"]
    ),
  ]
)
