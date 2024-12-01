import Testing

@testable import RayTracingWeekend

@Test func negateVector3f() async {
  let vector = Vector3f(u: 0, v: 1, w: 2)
  #expect(-vector == Vector3f(u: 0, v: -1, w: -2))
}

@Test func addTwoVector3f() async {
  let vector1 = Vector3f(u: 0, v: 1, w: 2)
  let vector2 = Vector3f(u: 3, v: 4, w: 5)

  #expect((vector1 + vector2) == Vector3f(u: 3, v: 5, w: 7))
}

@Test func subtractTwoVector3f() async {
  let vector1 = Vector3f(u: 0, v: 1, w: 3)
  let vector2 = Vector3f(u: 2, v: 1, w: 2)

  #expect((vector1 - vector2) == Vector3f(u: -2, v: 0, w: 1))
}

@Test func multiplyTwoVector3f() async {
  let vector1 = Vector3f(u: 0, v: 1, w: 2)
  let vector2 = Vector3f(u: 3, v: 4, w: 5)

  #expect((vector1 * vector2) == Vector3f(u: 0, v: 4, w: 10))
}

@Test func multiplyConstantWithVector3f() async {
  let vector = Vector3f(u: 0, v: 1, w: 2)

  #expect((3 * vector) == Vector3f(u: 0, v: 3, w: 6))
}

@Test func divideVector3fWithConstant() async {
  let vector = Vector3f(u: 0, v: 1, w: 2)

  #expect((vector / 3) == Vector3f(u: 0, v: 1 / 3, w: 2 / 3))
}

@Test func compoundAddVector3f() async {
  var startVector = Vector3f(u: 0, v: 1, w: 2)
  let additionalVector = Vector3f(u: 3, v: 4, w: 5)

  startVector += additionalVector

  #expect(startVector == Vector3f(u: 3, v: 5, w: 7))
}

@Test func compoundMultiplyVector3d() async {
  var startVector = Vector3f(u: 0, v: 1, w: 2)

  startVector *= 3.14

  #expect(startVector == Vector3f(u: 0, v: 3.14, w: 6.28))
}

@Test func compoundDivideVector3f() async {
  withKnownIssue {
    var startVector = Vector3f(u: 0, v: 3.14, w: 6.28)

    startVector /= 3.14

    #expect(startVector == Vector3f(u: 0, v: 1, w: 2))
  }
}
