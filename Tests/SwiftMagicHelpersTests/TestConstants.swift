//
let jsonString = "{\"field4\":{\"mField1\":\"mValue1\",\"mField2\":2,\"mField3\":[0,1,2,3,4,5,6]},\"field1\":\"value1\",\"field2\":1,\"field3\":[\"arrayvalue1\",\"arrayvalue2\"]}"
let invalidJsonString = "{\"field4\":{\"mField1\":\"mValue1\",\"mField2\":2,\"mField3\":[0,1,2,3,4,5,6]},field1\":\"value1\",\"field2\":1,\"field3\":[\"arrayvalue1\",\"arrayvalue2\"]}"

struct MockObject: Codable, Equatable {
    var field1: String?
    var field2: Int?
    var field3: [String]?
    var field4: MockObject2
}

struct MockObject2: Codable, Equatable {
    var mField1: String?
    var mField2: Int?
    var mField3: [Int]?
}
