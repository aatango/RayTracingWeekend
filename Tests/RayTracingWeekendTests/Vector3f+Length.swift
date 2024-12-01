import Testing

@testable import RayTracingWeekend

@Test func Vector3fLength() async {
  let vector = Vector3f(u: 1, v: 2, w: 3)

  #expect(vector.length == Float(14.squareRoot()))
}

@Test func Vector3fLengthSquared() async {
  let vector = Vector3f(u: 1, v: 2, w: 3)

  #expect(vector.lengthSquared == Float(14))
}
