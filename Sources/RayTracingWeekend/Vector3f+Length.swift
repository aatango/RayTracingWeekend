extension Vector3f {
  public var length: Float { lengthSquared.squareRoot() }
  public var lengthSquared: Float {
    self.u * self.u + self.v * self.v + self.w * self.w
  }

  public var unit: Vector3f {
    self / self.length
  }
}
