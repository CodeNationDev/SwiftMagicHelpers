```
 __          _  __ _                      _                 _                     
/ _\_      _(_)/ _| |_  /\/\   __ _  __ _(_) ___  /\  /\___| |_ __   ___ _ __ ___ 
\ \\ \ /\ / / | |_| __|/    \ / _` |/ _` | |/ __|/ /_/ / _ \ | '_ \ / _ \ '__/ __|
_\ \\ V  V /| |  _| |_/ /\/\ \ (_| | (_| | | (__/ __  /  __/ | |_) |  __/ |  \__ \
\__/ \_/\_/ |_|_|  \__\/    \/\__,_|\__, |_|\___\/ /_/ \___|_| .__/ \___|_|  |___/
                                    |___/                    |_|                  
```

> Package for unify most useful helpers for your day a day coding.

# Main class 
```swift
public struct HelperManager {}
```

# Helpers

## JSON
This helper provides methodf for encode and decode json to swift object and vice versa using Codable framework..

### **Interface**:

> **Description** : function for encode Swift object to json stirng.
> - **Parameter** result: Generic for pass object as argument for encode.
> - **Throws**: NSError with message and code Int with error for manage.
> - **Returns**: String: String format json as object encoded.

```swift
public static func jsonEncode<T: Codable>(_ result: T) throws -> String
```

### **Usage Example**:
```swift
do {
let encoded = try HelperManager.JSON.jsonEncode(mockStructure)
} catch let error as NSError {
    //put here your error management.
}
```


### **Deocde**:
>**Description**: function for decode string json to swift object.
>- **Parameters**:
>- json: String json for decode.
>- type: type identity as baseinterface of json conversion.
>- **Throws**: NSError with message and code Int with error for manage.
>- **Returns**: T?: Type of class provided in the constructor for decode this json.
```swift
public static func jsonDecode<T: Codable>(_ json: String, type: T.Type) throws -> T 
```

### **Usage Example**:
Object:
```swift
mockStruct = MockObject(field1: "value1", field2: 1, field3: ["arrayvalue1", "arrayvalue2"], field4: MockObject2(mField1: "mValue1", mField2: 2, mField3: [0, 1, 2, 3, 4, 5, 6]))
```
use
```swift
do {
let decoded = try HelperManager.JSON.jsonDecode(jsonString, type: MockObject.self)
} catch let error as NSError {
    //put here your error management.
}
```

## UIApplication+TopViewController
This helper includes a fuction for catch top viewcontroller in Viewcycle stack

### **Interface**:

> **Description** : function for encode Swift object to json stirng.
> - **Parameter** base: Base of stack for find the top view controller.
> - **Returns**: UIViewController: The first view controller finded in base stack.
```swift
public static func getTopViewController(base: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController?
```
### **Usage Example**:
```swift
let topVC = HelperManager.UIApplicationHelpers.getTopViewController()
```

<br>

## Meta

David Martin Saiz – [@deividmarshall](https://twitter.com/deividmarshall) – davms81@gmail.com

Distributed under the MIT license. See ``LICENSE`` for more information.

[https://github.com/CodeNationDev/](https://github.com/CodeNationDev)

## Version History
* 1.0.0
  *  JSON helper, encode and decode jsons.
  *  UIapplicationHelper for get top viewcontroller.
  *  UnitTesting
  *  Readme documentation.
