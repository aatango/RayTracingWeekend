public struct Ray {
  public let origin: Point3f
  public let direction: Vector3f

  public init(origin: Point3f, direction: Vector3f) {
    self.origin = origin
    self.direction = direction
  }

  func at(_ position: Float) -> Point3f {
    origin + position * direction
  }
}
