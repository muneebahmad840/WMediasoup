// swift-tools-version:5.3
import PackageDescription

let version = "4"
let mediasoupChecksum = "5f331ac08e82a04ec5faf2a63c90c5865b8825b17bfec3fb0fd671678f7461a6"
let webrtcChecksum = "00bfbbab9279ccc5e5f595ef89350f70e80acbc471e101718d218876b1ed51ba"


let package = Package(
	name: "Mediasoup-Client-Swift",
	platforms: [
		.iOS(.v14)
	],
	products: [
		.library(
			name: "Mediasoup",
			targets: [
				"Mediasoup",
				"WebRTC"
			]
		)
	],
	dependencies: [
	],
	targets: [
		.binaryTarget(
			name: "Mediasoup",
			url: "https://github.com/muneebahmad840/WMediasoup/releases/tag/LATEST/Mediasoup.xcframework.zip",
			checksum: mediasoupChecksum
		),
		.binaryTarget(
			name: "WebRTC",
			url: "https://github.com/muneebahmad840/WMediasoup/releases/tag/LATEST/WebRTC.xcframework.zip",
			checksum: webrtcChecksum
		)
	]
)
