import Foundation
import BamwareCore

public struct SessionContext: Equatable, Codable {
    public let userId: UserID
    public let tenantId: TenantID
    public let roles: [UserRole]
    public let features: [String]
    public let localeIdentifier: String
    public let expiresAt: Date

    public var locale: Locale {
        Locale(identifier: localeIdentifier)
    }

    private enum CodingKeys: String, CodingKey {
        case userId
        case tenantId
        case roles
        case features
        case localeIdentifier
        case expiresAt
    }
}
