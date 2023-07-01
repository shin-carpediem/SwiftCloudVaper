import Compute

@main public struct SwiftCloudVaper {
    public private(set) static var text = "Hello, World!"
    
    public static func main() async throws {
        try await onIncomingRequest(handler)
    }
    
    static func handler(request: IncomingRequest, response: OutgoingResponse) async throws {
        // レスポンスの返し方を定義します
        try await response
            .status(.ok)
            .send(text)
    }
}
