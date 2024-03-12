// swift-tools-version:5.3
import PackageDescription


let version = "3"
let mediasoupChecksum = "694ae119c0363555d9ca8e35db1ec23da5b7f0fece6ab2717c69ae5940d1986c"
let webrtcChecksum = "fc8103a65abe311545499be8f539d09c11ab5ba94a8a4bf7edad27ddc723b6de"


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
			url: "https://github.com/VLprojects/mediasoup-client-swift/releases/download/\(version)/Mediasoup.xcframework.zip",
			checksum: mediasoupChecksum
		),
		.binaryTarget(
			name: "WebRTC",
			url: "https://github.com/VLprojects/mediasoup-client-swift/releases/download/\(version)/WebRTC.xcframework.zip",
			checksum: webrtcChecksum
		)
	]
)
