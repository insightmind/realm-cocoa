// swift-tools-version:4.2
import PackageDescription

let package = Package(
	name: "RealmSwift",
	products: [
	        .library(
	            name: "RealmSwift",
	            targets: ["RealmSwift"]),
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
