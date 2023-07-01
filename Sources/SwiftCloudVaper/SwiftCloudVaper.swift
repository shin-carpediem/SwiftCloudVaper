import Compute
import Foundation

@main public struct SwiftCloudVaper {
    public static func main() async throws {
        try await onIncomingRequest(router.run)
    }
    
    static let router = Router()
        .get("") { request, response in
            try await response
                .status(.ok)
                .send("Hello, World!")
        }
        .get("/greeting") { request, response in
            let jsonBody: [String: Sendable] = try await request.body.jsonObject()
            let name = jsonBody["name"] as? String ?? ""
            let result = "Hello, \(name)!"
            let resultJSON = [
                "greeting": result,
            ]
            let resultData: Data = try JSONEncoder().encode(resultJSON)
            
            try await response
                .status(.ok)
                .send(resultData)
        }
}
