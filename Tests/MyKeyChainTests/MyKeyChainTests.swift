import XCTest
@testable import MyKeyChain

final class MyKeyChainTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(MyKeyChain().text, "Hello, World!")
    }
}
