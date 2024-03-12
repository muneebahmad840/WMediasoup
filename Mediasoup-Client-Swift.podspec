Pod::Spec.new do |spec|
	spec.summary = "Swift client for Mediasoup 3"
	spec.description = "Swift wrapper for libmediasoupclient"
	spec.homepage = "https://github.com/muneebahmad840/WMediasoup"
	spec.license = "OPEN"
	spec.author = {
		"Muneeb Ahmad" => "abc@farigh.com"
	}
	
	spec.name = "Mediasoup-Client-Swift"
	spec.version = "4"
	spec.platform = :ios, "14.0"
	spec.module_name = "Mediasoup"
	spec.module_map = "Mediasoup/Mediasoup.modulemap"

	spec.source = {
		:git => "https://github.com/muneebahmad840/WMediasoup.git",
		:tag => spec.version.to_s
	}

	spec.frameworks =
		"AVFoundation",
		"AudioToolbox",
		"CoreAudio",
		"CoreMedia",
		"CoreVideo"

	spec.vendored_frameworks =
		"bin/Mediasoup.xcframework",
		"bin/WebRTC.xcframework"
end
