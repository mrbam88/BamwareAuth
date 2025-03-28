import Foundation
import BamwareCore

public protocol TokenService {
    func parseToken(_ token: String) throws -> SessionContext
}

public final class MockTokenService: TokenService {
    public init() {}

    public func parseToken(_ token: String) throws -> SessionContext {
        return SessionContext(
            userId: UserID(UUID()),
            tenantId: TenantID("rishta"),
            roles: [UserRole.user],
            features: ["messaging", "profile"],
            localeIdentifier: "en_US",
            expiresAt: Date().addingTimeInterval(3600)
        )
    }
}