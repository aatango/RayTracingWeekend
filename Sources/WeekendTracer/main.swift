import Logging
import RayTracingWeekend

let logger = Logger(label: "Tracing Progress Bar")

func rayColour(_ ray: Ray) -> Colour3f {
  let unitDirection: Vector3f = ray.direction.unit

  let a: Float = 0.5 * (unitDirection.v + 1.0)

  return (1.0 - a) * Colour3f(u: 1, v: 1, w: 1) + a
    * Colour3f(u: 0.5, v: 0.7, w: 1)
}

struct Image {
  let aspectRatio: Float = 16.0 / 9.0
  let width: UInt = 400

  var height: UInt {
    let calculatedHeight: UInt = UInt(Float(self.width) / self.aspectRatio)

    return calculatedHeight < 1 ? 1 : calculatedHeight
  }
}

struct Viewport {
  let height: Float = 2.0
  var width: Float {
    let image = Image()
    return self.height * (Float(image.width) / Float(image.height))
  }
}

struct Camera {
  let focalLength: Float = 1.0
  let viewport: Viewport = Viewport()
  let centre: Point3f = Point3f(u: 0, v: 0, w: 0)
}

let camera = Camera()
let image = Image()

// Vectors across the horizontal, and down the vertical viewport edges
let viewportU: Vector3f = Vector3f(u: camera.viewport.width, v: 0, w: 0)
let viewportV: Vector3f = Vector3f(u: 0, v: -camera.viewport.height, w: 0)

// Horizontal, and vertical delta vectors from pixel to pixel
let pixelDeltaU: Vector3f = viewportU / Float(image.width)
let pixelDeltaV: Vector3f = viewportV / Float(image.height)

// Location of the upper left pixel
let focalVector: Vector3f = Vector3f(u: 0, v: 0, w: camera.focalLength)
let viewportUQuadrant: Vector3f = viewportU / 2
let viewportVQuandrant: Vector3f = viewportV / 2

// Calculate the location of the upper left pixel
let viewportUpperLeft: Vector3f =
  camera.centre - focalVector - viewportUQuadrant - viewportVQuandrant
let pixel00LOC: Vector3f = viewportUpperLeft + 0.5 * (pixelDeltaU + pixelDeltaV)

// Render
print("P3", "\(image.width)", "\(image.height)", "255")

for j: UInt in 0..<image.height {
  logger.info("\(image.height - j) scanlines remaining")
  for i: UInt in 0..<image.width {
    let pixelCentre: Vector3f =
      pixel00LOC + (Float(i) * pixelDeltaU) + (Float(j) * pixelDeltaV)
    let rayDirection: Vector3f = pixelCentre - camera.centre

    let ray: Ray = Ray(origin: camera.centre, direction: rayDirection)

    print(rayColour(ray).asColour)
  }
}

logger.info("Done!")
