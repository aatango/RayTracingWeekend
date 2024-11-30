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
  targets: [
    .target(
      name: "RayTracingWeekend"),
    .executableTarget(
      name: "WeekendTracer",
      dependencies: ["RayTracingWeekend"]),
    .testTarget(
      name: "RayTracingWeekendTests",
      dependencies: ["RayTracingWeekend"]
    ),
  ]
)
