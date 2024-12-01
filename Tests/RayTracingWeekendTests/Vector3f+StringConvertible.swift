import Testing

@testable import RayTracingWeekend

@Test func convertVector3fToString() async {
  let vector = Vector3f(u: 0, v: 1, w: 3.14)

  #expect(vector.description == "0.0 1.0 3.14")
}
