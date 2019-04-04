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
	        .target(
	            name: "RealmSwift",
	            dependencies: ["Realm"],
		    path: "RealmSwift",
	            exclude: [
	                "Tests",
	            ]
		),
	]
)
