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

// Entry point for the Lambda function
@main
struct HelloWorld: SimpleLambdaHandler {

    // Lambda Function handler
    func handle(_ event: Request, context: LambdaContext) async throws -> Response {

        return Response(body: "Hello, world!")
    }
}