import XCTest
@testable import BamwareAuth

final class TenantServiceTests: XCTestCase {
    func test_currentTenant_returnsTenantWithID() {
        let sut = MockTenantService()
        let tenant = sut.currentTenant()
        
        XCTAssertNotNil(tenant)
        XCTAssertEqual(tenant?.id, "bamSocial")
        XCTAssertEqual(tenant?.tenantID, "bamSocial")
    }
    
    func test_currentTenant_noTenant_returnsNil() {
        let sut = MockTenantService(hasTenant: false)
        let tenant = sut.currentTenant()
        
        XCTAssertNil(tenant)
    }
}

private class MockTenantService: TenantService {
    private let hasTenant: Bool
    
    init(hasTenant: Bool = true) {
        self.hasTenant = hasTenant
    }
    
    func currentTenant() -> Tenant? {
        hasTenant ? Tenant(id: "bamSocial", tenantID: "bamSocial") : nil
    }
}
