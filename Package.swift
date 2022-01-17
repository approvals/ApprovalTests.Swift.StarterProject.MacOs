// swift-tools-version:5.3

import PackageDescription

let package = Package(
        name: "ApprovalTests.Swift.StarterProject.MacOS",
        platforms: [
            .macOS(.v10_14),
        ],
        products: [
            .library(
                    name: "ApprovalTests.Swift.StarterProject.MacOS",
                    targets: ["ApprovalTests.Swift.StarterProject.MacOS"]
            ),
        ],
        // begin-snippet: package_include_approvals
        dependencies: [
            .package(
                    name: "ApprovalTests.Swift",
                    url: "https://github.com/approvals/ApprovalTests.Swift",
                    from: "1.0.0"
            ),
        ],
        // end-snippet
        targets: [
            .target(
                    name: "ApprovalTests.Swift.StarterProject.MacOS",
                    dependencies: [],
                    path: "ApprovalTests.Swift.StarterProject.MacOS",
                    exclude: ["Info.plist"]
            ),
        // begin-snippet: package_add_test_target
            .testTarget(
                    name: "ApprovalTests.Swift.StarterProject.MacOSTests",
                    dependencies: [
                        "ApprovalTests.Swift.StarterProject.MacOS",
                        "ApprovalTests.Swift"
                    ],
        // end-snippet
                    path: "ApprovalTests.Swift.StarterProject.MacOSTests",
                    exclude: [
                        "Info.plist",
                        "ApprovalsSampleMacTests.testList.approved.txt",
                        "ApprovalsSampleMacTests.testText.approved.txt"
                    ]
            ),
        ]
)
