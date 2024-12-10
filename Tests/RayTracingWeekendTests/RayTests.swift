import Testing

@testable import RayTracingWeekend

@Test func rayPropagatesLinearly() async {
  let ray = Ray(
    origin: Point3f(u: 0, v: 1, w: 2),
    direction: Vector3f(u: 4, v: 2, w: 0)
  )

  #expect(ray.at(0) == Point3f(u: 0, v: 1, w: 2))
  #expect(ray.at(-1) == Point3f(u: -4, v: -1, w: 2))
  #expect(ray.at(-3.14) == Point3f(u: -12.56, v: -5.28, w: 2))
}
