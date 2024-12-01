extension Vector3f {
  public static prefix func - (vector: Vector3f) -> Vector3f {
    Vector3f(u: -vector.u, v: -vector.v, w: -vector.w)
  }

  public static func + (left: Vector3f, right: Vector3f) -> Vector3f {
    Vector3f(u: left.u + right.u, v: left.v + right.v, w: left.w + right.w)
  }

  public static func - (left: Vector3f, right: Vector3f) -> Vector3f {
    Vector3f(u: left.u - right.u, v: left.v - right.v, w: left.w - right.w)
  }

  public static func * (left: Vector3f, right: Vector3f) -> Vector3f {
    Vector3f(u: left.u * right.u, v: left.v * right.v, w: left.w * right.w)
  }

  public static func * (value: Float, vector: Vector3f) -> Vector3f {
    Vector3f(u: value * vector.u, v: value * vector.v, w: value * vector.w)
  }

  public static func / (vector: Vector3f, value: Float) -> Vector3f {
    Vector3f(u: vector.u / value, v: vector.v / value, w: vector.w / value)
  }

  public static func += (left: inout Vector3f, right: Vector3f) {
    left = left + right
  }

  public static func *= (left: inout Vector3f, right: Float) {
    left = Vector3f(u: left.u * right, v: left.v * right, w: left.w * right)
  }

  public static func /= (left: inout Vector3f, right: Float) {
    left *= (1 / right)
  }

}
