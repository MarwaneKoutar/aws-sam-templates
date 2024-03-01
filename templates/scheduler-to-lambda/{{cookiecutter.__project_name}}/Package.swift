// swift-tools-version: {{ cookiecutter._swift_tools_version }}
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "aws-swift-app",
    platforms: [.macOS(.v12)],
    products: [
        .executable(name: "ScheduledTaskHandler", targets: ["ScheduledTaskHandler"])
    ],
    dependencies: [
        .package(url: "https://github.com/swift-server/swift-aws-lambda-runtime", branch: "main"),
        .package(url: "https://github.com/swift-server/swift-aws-lambda-events", branch: "main"),
        // Uncomment the following line to use the AWS SDK for Swift in your Lambda function aswell as the line in the targets section
        // .package(url: "https://github.com/awslabs/aws-sdk-swift", from: "{{ cookiecutter._aws_swift_sdk_version }}")
    ],
    targets: [
        .executableTarget(
            name: "ScheduledTaskHandler",
            dependencies: [
                .product(name: "AWSLambdaRuntime",package: "swift-aws-lambda-runtime"),
                .product(name: "AWSLambdaEvents",package: "swift-aws-lambda-events"),
                // Uncomment the following line to use the AWS SDK for Swift in your Lambda function aswell as the line in the dependencies section
                // Make sure to change the name of the product to the one you want to use
                // .product(name: "AWSSDKSwift",package: "aws-sdk-swift"),
            ]
        )
    ]
)