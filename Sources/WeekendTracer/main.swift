import Logging
import RayTracingWeekend

let logger = Logger(label: "Tracing Progress Bar")

struct Image {
  let height: UInt = 256
  let width: UInt = 256
}

let image = Image()

print("P3", "\(image.height)", "\(image.width)", "255")

for j: UInt in 0..<image.height {
  logger.info("\(image.height - j) scanlines remaining")
  for i: UInt in 0..<image.width {
    let pixel = Colour3f(
      u: Float(i) / Float(image.width - 1),
      v: Float(j) / Float(image.height - 1),
      w: 0.0)

    print(pixel.asColour)
  }
}

logger.info("Done!")
