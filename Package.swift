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
                .branch("master")
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
            .testTarget(
                    name: "ApprovalTests.Swift.StarterProject.MacOSTests",
                    dependencies: [
                        "ApprovalTests.Swift.StarterProject.MacOS",
                        "ApprovalTests.Swift"
                    ],
                    path: "ApprovalTests.Swift.StarterProject.MacOSTests",
                    exclude: [
                        "Info.plist",
                        "ApprovalsSampleMacTests.testList.approved.txt",
                        "ApprovalsSampleMacTests.testText.approved.txt"
                    ]
            ),
        ]
)
