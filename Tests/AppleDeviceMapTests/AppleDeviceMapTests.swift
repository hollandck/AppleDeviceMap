import Testing
@testable import AppleDeviceMap

@Test func baseMap() async throws {
    let iPhone = try #require(AppleDeviceModelMap.instance.deviceModel(deviceModel: "iPhone10,2"))
    #expect(iPhone.displayName == "iPhone 8 Plus")
    #expect(iPhone.lastOs  == 16)
    #expect(iPhone.displayWithLastVersion() == "iPhone 8 Plus (2017) - lastOs: 16")

    #expect(AppleDeviceModelMap.instance.deviceModel(deviceModel: "not a model") == nil)

    let watch = try #require(AppleDeviceModelMap.instance.deviceModel(deviceModel: "Watch7,12"))
    #expect(watch.displayWithLastVersion() == "Watch Ultra 3 (2025)")
}
