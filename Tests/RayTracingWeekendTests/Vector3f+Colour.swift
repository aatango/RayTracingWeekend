import Testing

@testable import RayTracingWeekend

@Test func writeVector3fAsColour() async {
  let vector = Vector3f(u: 0, v: 1 / 2, w: 1)

  #expect(vector.asColour == "0 127 255")
}
