// Import the packages required by our function
import AWSLambdaRuntime

// Define the request structure
struct Request: Codable {
    let rawPath: String
}

// Define the response structure
struct Response: Codable {
    let body: String
}

// Error type for unsupported requests
enum APIError: Error {
    case unsupportedRequest
}

// Entry point for the Lambda function
@main
struct HelloWorld: SimpleLambdaHandler {

    // Lambda Function handler
    func handle(_ event: Request, context: LambdaContext) async throws -> Response {

        // Check if it's a GET request
        if event.rawPath == "/" {
            // Return a Hello message if it's a GET request
            return Response(body: "Hello from AWS")
        } else {
            // Return a message indicating unsupported request
            throw APIError.unsupportedRequest
        }
    }
}