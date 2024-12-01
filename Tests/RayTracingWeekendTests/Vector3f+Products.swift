import Testing

@testable import RayTracingWeekend

@Test func Vector3fDotProduct() async {
  let vector1 = Vector3f(u: 1, v: 3, w: -5)
  let vector2 = Vector3f(u: 4, v: -2, w: -1)

  #expect(vector1.dotProduct(other: vector1) == 35)
  #expect(vector1.dotProduct(other: vector2) == 3)
}

@Test func Vector3fCrossProduct() async {
  let vector1 = Vector3f(u: -1, v: 2, w: 5)
  let vector2 = Vector3f(u: 4, v: -0, w: -3)

  #expect(vector1.crossProduct(other: vector2) == Vector3f(u: -6, v: 17, w: -8))
}
