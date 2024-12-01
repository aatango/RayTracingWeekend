public struct Vector3f: Equatable {
  public let u: Float, v: Float, w: Float

  public init(u: Float, v: Float, w: Float) {
    self.u = u
    self.v = v
    self.w = w
  }
}

public typealias Point3f = Vector3f
public typealias Colour3f = Vector3f
