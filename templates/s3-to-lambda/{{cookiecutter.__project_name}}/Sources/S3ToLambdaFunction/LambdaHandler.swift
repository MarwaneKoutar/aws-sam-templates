// Import the packages required by our function
import AWSLambdaRuntime
import AWSLambdaEvents

// Entry point for the Lambda function
@main
struct S3ToLambdaFunction: SimpleLambdaHandler {

    // Lambda Function handler
    func handle(_ event: S3Event, context: LambdaContext) async throws {

        for record in event.records {
            // Process the S3 event
            print("Received S3 event for object: \(record.s3.object.key)")
        }
    }
}
