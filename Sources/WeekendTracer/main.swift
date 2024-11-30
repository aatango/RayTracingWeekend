import Logging

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
    let red: Double = Double(i) / Double(image.width - 1)
    let green: Double = Double(j) / Double(image.height - 1)
    let blue: Double = 0.0

    print(
      "\(UInt(255.9 * red))",
      "\(UInt(255.9 * green))",
      "\(UInt(255.9 * blue))")
  }
}

logger.info("Done!")
