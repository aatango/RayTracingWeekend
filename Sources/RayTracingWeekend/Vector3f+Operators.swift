extension Vector3f {
  static prefix func - (vector: Vector3f) -> Vector3f {
    Vector3f(u: -vector.u, v: -vector.v, w: -vector.w)
  }

  static func + (left: Vector3f, right: Vector3f) -> Vector3f {
    Vector3f(u: left.u + right.u, v: left.v + right.v, w: left.w + right.w)
  }

  static func - (left: Vector3f, right: Vector3f) -> Vector3f {
    Vector3f(u: left.u - right.u, v: left.v - right.v, w: left.w - right.w)
  }

  static func * (left: Vector3f, right: Vector3f) -> Vector3f {
    Vector3f(u: left.u * right.u, v: left.v * right.v, w: left.w * right.w)
  }

  static func * (value: Float, vector: Vector3f) -> Vector3f {
    Vector3f(u: value * vector.u, v: value * vector.v, w: value * vector.w)
  }

  static func / (vector: Vector3f, value: Float) -> Vector3f {
    Vector3f(u: vector.u / value, v: vector.v / value, w: vector.w / value)
  }

  static func += (left: inout Vector3f, right: Vector3f) {
    left = left + right
  }

  static func *= (left: inout Vector3f, right: Float) {
    left = Vector3f(u: left.u * right, v: left.v * right, w: left.w * right)
  }

  static func /= (left: inout Vector3f, right: Float) {
    left *= (1 / right)
  }

}
