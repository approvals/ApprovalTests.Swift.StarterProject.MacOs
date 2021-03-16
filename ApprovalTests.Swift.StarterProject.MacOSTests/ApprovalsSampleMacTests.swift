@testable import ApprovalTests_Swift_StarterProject_MacOS
import ApprovalTests_Swift
import XCTest

class ApprovalsSampleMacTests: XCTestCase {

    func testList() throws {
        var names: [String] = ["Llewellyn", "James", "Dan", "Jason", "Katrina"]
        names.sort()
        try Approvals.verifyAll("", names);
    }
    
    func testText() throws {
        try Approvals.verify(UnitTests.getBenefits())
    }

}
