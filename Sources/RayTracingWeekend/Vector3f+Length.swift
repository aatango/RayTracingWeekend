extension Vector3f {
  var length: Float { lengthSquared.squareRoot() }
  var lengthSquared: Float {
    self.u * self.u + self.v + self.v + self.w * self.w
  }

  var unit: Vector3f {
    self / self.length
  }
}
