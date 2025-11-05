# AppleDeviceMap
Package with a map between Apple device IDs and presentable names

Basically it is fairly simple to get the display name for any model.

First get the model identifier:
```
    import Foundation
    func modelIdentifier() -> String {
        var sysInfo = utsname()
        uname(&sysInfo)
        let data = Data(bytes: &sysInfo.machine, count: Int(_SYS_NAMELEN))
        return String(bytes: data, encoding: .ascii)?.trimmingCharacters(in: .controlCharacters) ?? "No Identifier"
    }
``` 

Then simply call the map: `let device = AppleDeviceModelMap.instance.deviceModel(deviceModel: modelIdentifier())`

(Note: we only do iOS devices at this point, will work on the Macs, but the route is a bit different.)
