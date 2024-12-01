extension Vector3f {
  public func dotProduct(other: Vector3f) -> Float {
    self.u * other.u + self.v * other.v + self.w * other.w
  }

  public func crossProduct(other: Vector3f) -> Vector3f {
    Vector3f(
      u: self.v * other.w - self.w * other.v,
      v: self.w * other.u - self.u * other.w,
      w: self.u * other.v - self.v * other.u)
  }
}
