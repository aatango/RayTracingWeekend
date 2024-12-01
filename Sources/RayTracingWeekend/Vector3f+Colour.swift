extension Vector3f {
  public var asColour: String {
    let red: Float = self.u
    let green: Float = self.v
    let blue: Float = self.w

    return
      "\(UInt8(255.9 * red)) \(UInt8(255.9 * green)) \(UInt8(255.9 * blue))"
  }
}
