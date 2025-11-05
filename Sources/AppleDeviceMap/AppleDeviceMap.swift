//
//  AppleDeviceModel.swift
//  MobileStatsShared
//
//  Created by Charlie Holland on 11/11/24.
//

import Foundation

public enum CommsType: String, Sendable {
    case WiFi = "WiFi"
    case WiFiCell = "WiFi+Cell"
}

/// Structure to go from the device model returned by systeminfo structure on the device.
public struct AppleDeviceModel : Sendable {
    /// Internal model name (i.el iPhone15,3)
    public let deviceModel: String
    /// The mapped display name (i.e. iPhone 14 Pro Max)
    public let displayName: String
    /// Year it was introduced
    public let introYear: String
    /// Type of communication supported (i.e. WiFi and/or Cell)
    public let comms: CommsType?
    // Last supported iOS version
    public let lastOs: Int?

    init(deviceModel: String, displayName: String, introYear: String, comms: CommsType? = nil, lastOs: Int? = nil) {
        self.deviceModel = deviceModel
        self.displayName = displayName
        self.introYear = introYear
        self.comms = comms
        self.lastOs = lastOs
    }

    public static let models: [AppleDeviceModel] = [
        AppleDeviceModel(deviceModel: "iPad11,1", displayName: "iPad Mini 5th Gen", introYear: "2019"),
        AppleDeviceModel(deviceModel: "iPad11,2", displayName: "iPad Mini 5th Gen", introYear: "2019"),
        AppleDeviceModel(deviceModel: "iPad11,3", displayName: "iPad Air 3", introYear: "2019", comms: .WiFi),
        AppleDeviceModel(deviceModel: "iPad11,4", displayName: "iPad Air 3", introYear: "2019", comms: .WiFiCell),
        AppleDeviceModel(deviceModel: "iPad11,6", displayName: "iPad 10.2 8th Gen", introYear: "2020", comms: .WiFi),
        AppleDeviceModel(deviceModel: "iPad11,7", displayName: "iPad 10.2 8th Gen", introYear: "2020", comms: .WiFiCell),
        AppleDeviceModel(deviceModel: "iPad12,1", displayName: "iPad 10.2 9th Gen", introYear: "2021", comms: .WiFi),
        AppleDeviceModel(deviceModel: "iPad12,2", displayName: "iPad 10.2 9th Gen", introYear: "2021", comms: .WiFiCell),
        AppleDeviceModel(deviceModel: "iPad13,1", displayName: "iPad Air 4", introYear: "2020", comms: .WiFi),
        AppleDeviceModel(deviceModel: "iPad13,10", displayName: "iPad Pro 12.9 5th Gen", introYear: "2021", comms: .WiFiCell),
        AppleDeviceModel(deviceModel: "iPad13,11", displayName: "iPad Pro 12.9 5th Gen", introYear: "2021", comms: .WiFiCell),
        AppleDeviceModel(deviceModel: "iPad13,16", displayName: "iPad Air 5th Gen", introYear: "2022"),
        AppleDeviceModel(deviceModel: "iPad13,17", displayName: "iPad Air 5th Gen", introYear: "2022"),
        AppleDeviceModel(deviceModel: "iPad13,18", displayName: "iPad 10.9 10th Gen", introYear: "2022"),
        AppleDeviceModel(deviceModel: "iPad13,19", displayName: "iPad 10.9 10th Gen", introYear: "2022"),
        AppleDeviceModel(deviceModel: "iPad13,2", displayName: "iPad Air 4", introYear: "2020", comms: .WiFiCell),
        AppleDeviceModel(deviceModel: "iPad13,4", displayName: "iPad Pro 11 3rd Gen", introYear: "2021"),
        AppleDeviceModel(deviceModel: "iPad13,5", displayName: "iPad Pro 11 3rd Gen", introYear: "2021"),
        AppleDeviceModel(deviceModel: "iPad13,6", displayName: "iPad Pro 11 3rd Gen", introYear: "2021"),
        AppleDeviceModel(deviceModel: "iPad13,7", displayName: "iPad Pro 11 3rd Gen", introYear: "2021"),
        AppleDeviceModel(deviceModel: "iPad13,8", displayName: "iPad Pro 12.9 5th Gen", introYear: "2021", comms: .WiFi),
        AppleDeviceModel(deviceModel: "iPad13,9", displayName: "iPad Pro 12.9 5th Gen", introYear: "2021", comms: .WiFiCell),
        AppleDeviceModel(deviceModel: "iPad14,1", displayName: "iPad mini 6th Gen", introYear: "2021"),
        AppleDeviceModel(deviceModel: "iPad14,10", displayName: "iPad Air M2 13", introYear: "2024"),
        AppleDeviceModel(deviceModel: "iPad14,11", displayName: "iPad Air M2 13", introYear: "2024"),
        AppleDeviceModel(deviceModel: "iPad14,2", displayName: "iPad mini 6th Gen", introYear: "2021"),
        AppleDeviceModel(deviceModel: "iPad14,3", displayName: "iPad Pro 11 4th Gen", introYear: "2022", comms: .WiFi),
        AppleDeviceModel(deviceModel: "iPad14,4", displayName: "iPad Pro 11 4th Gen", introYear: "2022", comms: .WiFiCell),
        AppleDeviceModel(deviceModel: "iPad14,5", displayName: "iPad Pro 12.9 6th Gen", introYear: "2022"),
        AppleDeviceModel(deviceModel: "iPad14,6", displayName: "iPad Pro 12.9 6th Gen", introYear: "2022"),
        AppleDeviceModel(deviceModel: "iPad14,8", displayName: "iPad Air M2 11", introYear: "2024", comms: .WiFi),
        AppleDeviceModel(deviceModel: "iPad14,9", displayName: "iPad Air M2 11", introYear: "2024", comms: .WiFiCell),
        AppleDeviceModel(deviceModel: "iPad16,1", displayName: "iPad mini A17 Pro 7th Gen", introYear: "2024", comms: .WiFi),
        AppleDeviceModel(deviceModel: "iPad16,2", displayName: "iPad mini A17 Pro 7th Gen", introYear: "2024", comms: .WiFiCell),
        AppleDeviceModel(deviceModel: "iPad16,3", displayName: "iPad Pro M4 11", introYear: "2024", comms: .WiFi),
        AppleDeviceModel(deviceModel: "iPad16,4", displayName: "iPad Pro M4 11", introYear: "2024", comms: .WiFiCell),
        AppleDeviceModel(deviceModel: "iPad16,5", displayName: "iPad Pro M4 13", introYear: "2024", comms: .WiFi),
        AppleDeviceModel(deviceModel: "iPad16,6", displayName: "iPad Pro M4 13", introYear: "2024", comms: .WiFiCell),
        AppleDeviceModel(deviceModel: "iPad3,4", displayName: "iPad 4th Gen", introYear: "2012", comms: .WiFi, lastOs: 10),
        AppleDeviceModel(deviceModel: "iPad4,1", displayName: "iPad Air", introYear: "2013", comms: .WiFi, lastOs: 12),
        AppleDeviceModel(deviceModel: "iPad4,2", displayName: "iPad Air", introYear: "2013", comms: .WiFiCell, lastOs: 12),
        AppleDeviceModel(deviceModel: "iPad4,4", displayName: "iPad mini 2", introYear: "2013", comms: .WiFi, lastOs: 12),
        AppleDeviceModel(deviceModel: "iPad4,5", displayName: "iPad mini 2", introYear: "2013", comms: .WiFiCell, lastOs: 12),
        AppleDeviceModel(deviceModel: "iPad4,8", displayName: "iPad mini 3", introYear: "2014", comms: .WiFiCell, lastOs: 12),
        AppleDeviceModel(deviceModel: "iPad5,1", displayName: "iPad Mini 4", introYear: "2015", comms: .WiFi, lastOs: 15),
        AppleDeviceModel(deviceModel: "iPad5,2", displayName: "iPad Mini 4", introYear: "2015", comms: .WiFiCell, lastOs: 15),
        AppleDeviceModel(deviceModel: "iPad5,3", displayName: "iPad Air 2", introYear: "2014", comms: .WiFi, lastOs: 15),
        AppleDeviceModel(deviceModel: "iPad5,4", displayName: "iPad Air 2", introYear: "2014", comms: .WiFiCell, lastOs: 15),
        AppleDeviceModel(deviceModel: "iPad6,11", displayName: "iPad 9.7 5th Gen", introYear: "2017", comms: .WiFi, lastOs: 16),
        AppleDeviceModel(deviceModel: "iPad6,12", displayName: "iPad 9.7 5th Gen", introYear: "2017", comms: .WiFiCell, lastOs: 16),
        AppleDeviceModel(deviceModel: "iPad6,3", displayName: "iPad Pro 9.7", introYear: "2016", comms:.WiFi, lastOs: 16),
        AppleDeviceModel(deviceModel: "iPad6,4", displayName: "iPad Pro 9.7", introYear: "2016", comms:.WiFiCell, lastOs: 16),
        AppleDeviceModel(deviceModel: "iPad6,7", displayName: "iPad Pro 12.9", introYear: "2015", comms: .WiFi, lastOs: 16),
        AppleDeviceModel(deviceModel: "iPad6,8", displayName: "iPad Pro 12.9", introYear: "2015", comms: .WiFiCell, lastOs: 16),
        AppleDeviceModel(deviceModel: "iPad7,1", displayName: "iPad Pro 2nd Gen 12.9", introYear: "2017", comms: .WiFi, lastOs: 17),
        AppleDeviceModel(deviceModel: "iPad7,11", displayName: "iPad 10.2 7th Gen", introYear: "2019", comms: .WiFi),
        AppleDeviceModel(deviceModel: "iPad7,12", displayName: "iPad 10.2 7th Gen", introYear: "2019", comms: .WiFiCell),
        AppleDeviceModel(deviceModel: "iPad7,2", displayName: "iPad Pro 2nd Gen 12.9", introYear: "2017", comms: .WiFiCell, lastOs: 17),
        AppleDeviceModel(deviceModel: "iPad7,3", displayName: "iPad Pro 2nd Gen 10.5", introYear: "2017"),
        AppleDeviceModel(deviceModel: "iPad7,4", displayName: "iPad Pro 2nd Gen 10.5", introYear: "2017"),
        AppleDeviceModel(deviceModel: "iPad7,5", displayName: "iPad 6th Gen", introYear: "2018", comms: .WiFi, lastOs: 17),
        AppleDeviceModel(deviceModel: "iPad7,6", displayName: "iPad 6th Gen", introYear: "2018", comms: .WiFiCell, lastOs: 17),
        AppleDeviceModel(deviceModel: "iPad8,1", displayName: "iPad Pro 11", introYear: "2018", comms: .WiFi),
        AppleDeviceModel(deviceModel: "iPad8,10", displayName: "iPad Pro 11 2nd Gen", introYear: "2020", comms: .WiFiCell),
        AppleDeviceModel(deviceModel: "iPad8,11", displayName: "iPad Pro 12.9 4th Gen", introYear: "2020", comms: .WiFi),
        AppleDeviceModel(deviceModel: "iPad8,12", displayName: "iPad Pro 12.9 4th Gen", introYear: "2020", comms: .WiFiCell),
        AppleDeviceModel(deviceModel: "iPad8,2", displayName: "iPad Pro 11", introYear: "2018"),
        AppleDeviceModel(deviceModel: "iPad8,3", displayName: "iPad Pro 11", introYear: "2018"),
        AppleDeviceModel(deviceModel: "iPad8,5", displayName: "iPad Pro 12.9 3rd Gen", introYear: "2018"),
        AppleDeviceModel(deviceModel: "iPad8,7", displayName: "iPad Pro 12.9 3rd Gen", introYear: "2018"),
        AppleDeviceModel(deviceModel: "iPad8,8", displayName: "iPad Pro 12.9 3rd Gen", introYear: "2018"),
        AppleDeviceModel(deviceModel: "iPad8,9", displayName: "iPad Pro 11 Inch", introYear: "2020"),
        AppleDeviceModel(deviceModel: "iPhone10,1", displayName: "iPhone 8", introYear: "2017", lastOs: 16),
        AppleDeviceModel(deviceModel: "iPhone10,2", displayName: "iPhone 8 Plus", introYear: "2017", lastOs: 16),
        AppleDeviceModel(deviceModel: "iPhone10,3", displayName: "iPhone X", introYear: "2017", lastOs: 16),
        AppleDeviceModel(deviceModel: "iPhone10,4", displayName: "iPhone 8", introYear: "2017", lastOs: 16),
        AppleDeviceModel(deviceModel: "iPhone10,5", displayName: "iPhone 8 Plus", introYear: "2017", lastOs: 16),
        AppleDeviceModel(deviceModel: "iPhone10,6", displayName: "iPhone X", introYear: "2017", lastOs: 16),
        AppleDeviceModel(deviceModel: "iPhone11,2", displayName: "iPhone XS", introYear: "2018"),
        AppleDeviceModel(deviceModel: "iPhone11,6", displayName: "iPhone XS Max", introYear: "2018"),
        AppleDeviceModel(deviceModel: "iPhone11,8", displayName: "iPhone XR", introYear: "2018"),
        AppleDeviceModel(deviceModel: "iPhone12,1", displayName: "iPhone 11", introYear: "2019"),
        AppleDeviceModel(deviceModel: "iPhone12,3", displayName: "iPhone 11 Pro", introYear: "2019"),
        AppleDeviceModel(deviceModel: "iPhone12,5", displayName: "iPhone 11 Pro Max", introYear: "2019"),
        AppleDeviceModel(deviceModel: "iPhone12,8", displayName: "iPhone SE 2", introYear: "2020"),
        AppleDeviceModel(deviceModel: "iPhone13,1", displayName: "iPhone 12 mini", introYear: "2020"),
        AppleDeviceModel(deviceModel: "iPhone13,2", displayName: "iPhone 12", introYear: "2020"),
        AppleDeviceModel(deviceModel: "iPhone13,3", displayName: "iPhone 12 Pro", introYear: "2020"),
        AppleDeviceModel(deviceModel: "iPhone13,4", displayName: "iPhone 12 Pro Max", introYear: "2020"),
        AppleDeviceModel(deviceModel: "iPhone14,2", displayName: "iPhone 13 Pro", introYear: "2021"),
        AppleDeviceModel(deviceModel: "iPhone14,3", displayName: "iPhone 13 Pro Max", introYear: "2021"),
        AppleDeviceModel(deviceModel: "iPhone14,4", displayName: "iPhone 13 mini", introYear: "2021"),
        AppleDeviceModel(deviceModel: "iPhone14,5", displayName: "iPhone 13", introYear: "2021"),
        AppleDeviceModel(deviceModel: "iPhone14,6", displayName: "iPhone SE 3", introYear: "2022"),
        AppleDeviceModel(deviceModel: "iPhone14,7", displayName: "iPhone 14", introYear: "2022"),
        AppleDeviceModel(deviceModel: "iPhone14,8", displayName: "iPhone 14 Plus", introYear: "2022"),
        AppleDeviceModel(deviceModel: "iPhone15,2", displayName: "iPhone 14 Pro", introYear: "2022"),
        AppleDeviceModel(deviceModel: "iPhone15,3", displayName: "iPhone 14 Pro Max", introYear: "2022"),
        AppleDeviceModel(deviceModel: "iPhone15,4", displayName: "iPhone 15", introYear: "2023"),
        AppleDeviceModel(deviceModel: "iPhone15,5", displayName: "iPhone 15 Plus", introYear: "2023"),
        AppleDeviceModel(deviceModel: "iPhone16,1", displayName: "iPhone 15 Pro", introYear: "2023"),
        AppleDeviceModel(deviceModel: "iPhone16,2", displayName: "iPhone 15 Pro Max", introYear: "2023"),
        AppleDeviceModel(deviceModel: "iPhone17,1", displayName: "iPhone 16 Pro", introYear: "2024"),
        AppleDeviceModel(deviceModel: "iPhone17,2", displayName: "iPhone 16 Pro Max", introYear: "2024"),
        AppleDeviceModel(deviceModel: "iPhone17,3", displayName: "iPhone 16", introYear: "2024"),
        AppleDeviceModel(deviceModel: "iPhone17,4", displayName: "iPhone 16 Plus", introYear: "2024"),
        AppleDeviceModel(deviceModel: "iPhone18,1", displayName: "iPhone 17 Pro", introYear: "2025"),
        AppleDeviceModel(deviceModel: "iPhone18,2", displayName: "iPhone 17 Pro Max", introYear: "2025"),
        AppleDeviceModel(deviceModel: "iPhone18,3", displayName: "iPhone 17", introYear: "2025"),
        AppleDeviceModel(deviceModel: "iPhone18,4", displayName: "iPhone 17 Air", introYear: "2025"),
        AppleDeviceModel(deviceModel: "iPhone7,2", displayName: "iPhone 6", introYear: "2014", lastOs: 12),
        AppleDeviceModel(deviceModel: "iPhone8,1", displayName: "iPhone 6s", introYear: "2015", lastOs: 15),
        AppleDeviceModel(deviceModel: "iPhone8,2", displayName: "iPhone 6s Plus", introYear: "2015", lastOs: 15),
        AppleDeviceModel(deviceModel: "iPhone8,4", displayName: "iPhone SE", introYear: "2016"),
        AppleDeviceModel(deviceModel: "iPhone9,1", displayName: "iPhone 7", introYear: "2016", comms: .WiFiCell, lastOs: 15),
        AppleDeviceModel(deviceModel: "iPhone9,2", displayName: "iPhone 7 Plus", introYear: "2016", comms: .WiFiCell, lastOs: 15),
        AppleDeviceModel(deviceModel: "iPhone9,3", displayName: "iPhone 7", introYear: "2016", comms: .WiFiCell, lastOs: 15),
        AppleDeviceModel(deviceModel: "iPhone9,4", displayName: "iPhone 7 Plus", introYear: "2016", comms: .WiFiCell, lastOs: 15),
        AppleDeviceModel(deviceModel: "iPod9,1", displayName: "iPod touch 7th Gen", introYear: "2019", comms: .WiFi, lastOs: 15),
        AppleDeviceModel(deviceModel: "arm64", displayName: "Simulator/Demo", introYear: ""),
        AppleDeviceModel(deviceModel: "Watch2,4", displayName: "Watch Series 2 42 mm", introYear: "2016", comms: .WiFi),
        AppleDeviceModel(deviceModel: "Watch3,1", displayName: "Watch Series 3 38 mm", introYear: "2017", comms: .WiFi),
        AppleDeviceModel(deviceModel: "Watch3,2", displayName: "Watch Series 3 42 mm", introYear: "2017", comms: .WiFi),
        AppleDeviceModel(deviceModel: "Watch3,3", displayName: "Watch Series 3 38 mm", introYear: "2017", comms: .WiFiCell),
        AppleDeviceModel(deviceModel: "Watch3,4", displayName: "Watch Series 3 42 mm", introYear: "2017", comms: .WiFiCell),
        AppleDeviceModel(deviceModel: "Watch4,1", displayName: "Watch Series 4 40 mm", introYear: "2017", comms: .WiFi),
        AppleDeviceModel(deviceModel: "Watch4,2", displayName: "Watch Series 4 44 mm", introYear: "2018", comms: .WiFi),
        AppleDeviceModel(deviceModel: "Watch4,3", displayName: "Watch Series 4 40 mm", introYear: "2018", comms: .WiFiCell),
        AppleDeviceModel(deviceModel: "Watch4,4", displayName: "Watch Series 4 44 mm", introYear: "2018", comms: .WiFiCell),
        AppleDeviceModel(deviceModel: "Watch5,1", displayName: "Watch Series 5 40 mm", introYear: "2019", comms: .WiFi),
        AppleDeviceModel(deviceModel: "Watch5,2", displayName: "Watch Series 5 44 mm", introYear: "2019", comms: .WiFi),
        AppleDeviceModel(deviceModel: "Watch5,3", displayName: "Watch Series 5 40 mm", introYear: "2019", comms: .WiFiCell),
        AppleDeviceModel(deviceModel: "Watch5,4", displayName: "Watch Series 5 44 mm", introYear: "2019", comms: .WiFiCell),
        AppleDeviceModel(deviceModel: "Watch6,1", displayName: "Watch Series 6 40 mm", introYear: "2020", comms: .WiFi),
        AppleDeviceModel(deviceModel: "Watch6,2", displayName: "Watch Series 6 44 mm", introYear: "2020", comms: .WiFi),
        AppleDeviceModel(deviceModel: "Watch6,3", displayName: "Watch Series 6 40 mm", introYear: "2020", comms: .WiFiCell),
        AppleDeviceModel(deviceModel: "Watch6,4", displayName: "Watch Series 6 44 mm", introYear: "2020", comms: .WiFiCell),
        AppleDeviceModel(deviceModel: "Watch6,18", displayName: "Watch Ultra", introYear: "2022", comms: .WiFiCell),
        AppleDeviceModel(deviceModel: "Watch7,12", displayName: "Watch Ultra 3", introYear: "2025", comms: .WiFiCell),
        ]

    public func displayWithLastVersion() -> String {
        if let lastOs {
            return "\(displayName) (\(introYear)) - lastOs: \(lastOs)"
        } else {
            return "\(displayName) (\(introYear))"
        }
    }
}

public actor AppleDeviceModelMap {
    public static let instance = AppleDeviceModelMap()
    private let map: [String: AppleDeviceModel]

    private init() {
        map = AppleDeviceModel.models.reduce(into: [String: AppleDeviceModel](), { $0[$1.deviceModel] = $1 })
    }

    public nonisolated func deviceModel(deviceModel: String) -> AppleDeviceModel? {
        map[deviceModel]
    }
}

