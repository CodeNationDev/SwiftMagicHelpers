//
import XCTest
@testable import SwiftMagicHelpers

final class SwiftMagicHelpersTests: XCTestCase {
    var mockStruct:MockObject?
    
    override func setUp() {
        super.setUp()
        mockStruct = MockObject(field1: "value1", field2: 1, field3: ["arrayvalue1", "arrayvalue2"], field4: MockObject2(mField1: "mValue1", mField2: 2, mField3: [0, 1, 2, 3, 4, 5, 6]))
        
    }
    
    func testJSONencodeDefault() {
        guard let mockStructure = mockStruct else { return }
        let encoded = try? HelperManager.JSON.jsonEncode(mockStructure)
        
        XCTAssertNotNil(encoded)
        XCTAssertFalse(encoded!.isEmpty)
        XCTAssertEqual(encoded!, jsonString)
    }
    
    func testJSONdecodeDefault() {
        guard let mockStructure = mockStruct else { return }
        let decoded = try? HelperManager.JSON.jsonDecode(jsonString, type: MockObject.self)

        XCTAssertNotNil(decoded)
        XCTAssertEqual(decoded, mockStructure)
    }
    
    func testJSONdecodeInvalidJSON() {
        var errorDecoding:NSError?
        var decoded: MockObject?
        guard let mockStructure = mockStruct else { return }
        do {
            decoded = try HelperManager.JSON.jsonDecode(invalidJsonString, type: MockObject.self)
        } catch let error as NSError {
         errorDecoding = error
        }
        
        XCTAssertNil(decoded)
        XCTAssertEqual(errorDecoding?.code, 4864) //Invalid JSON NSError code.
        XCTAssertNotEqual(decoded, mockStructure)
    }
}




