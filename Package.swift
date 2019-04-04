// swift-tools-version:4.2
import PackageDescription

let package = Package(
	    name: "RealmSwift",
	    products: [
	        // Products define the executables and libraries produced by a package, and make them visible to other packages.
	        .library(
	            name: "Realm",
	            targets: ["Realm"]),
	        .library(
	            name: "RealmSwift",
	            targets: ["RealmSwift", "Realm"]),
	    ],
	    targets: [
	        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
	        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
	        .target(
	            name: "Realm",
	            dependencies: []
	        ),
	        .target(
	            name: "RealmSwift",
	            dependencies: ["Realm"],
	            exclude: [
	                "Tests",
	            ]
	        ),
	    ]
)
