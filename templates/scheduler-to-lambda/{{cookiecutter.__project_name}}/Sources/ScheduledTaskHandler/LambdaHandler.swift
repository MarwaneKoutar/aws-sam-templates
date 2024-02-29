// Import the packages required by our function
import AWSLambdaRuntime
import AWSLambdaEvents

// Entry point for the Lambda function
@main
struct ScheduledTaskHandler: SimpleLambdaHandler {

    // Lambda Function handler
    func handle(_ event: CloudwatchScheduledEvent, context: LambdaContext) async throws  {

        // Log the event
        print("Lambda function triggered by scheduled event")
        // You can add your logic here to handle the scheduled event
    }
}