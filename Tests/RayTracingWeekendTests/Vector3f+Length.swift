import Testing

@testable import RayTracingWeekend

@Test func Vector3fLengthSquared() async {
  let vector = Vector3f(u: 2, v: 4, w: 4)

  #expect(vector.lengthSquared == 36)
}

@Test func Vector3fLength() async {
  let vector = Vector3f(u: 2, v: 4, w: 4)

  #expect(vector.length == 6)
}

@Test func UnitVector3f() async {
  let vector: Vector3f = Vector3f(u: 2, v: 4, w: 4)

  #expect(vector.unit == Vector3f(u: 1 / 3, v: 2 / 3, w: 2 / 3))
}
