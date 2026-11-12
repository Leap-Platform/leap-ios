Pod::Spec.new do |s|
    s.name         = "LeapSDK"
    s.version      = "2.3.0"
    s.summary      = "Product engagement made easy"
    s.description  = <<-DESC
    Product engagement made easy. Onboard, nudge, & delight your mobile users
                     DESC
    s.homepage     = "https://whatfix.com/products/mobile/"
    s.platform     = :ios, "10.0"
    s.swift_versions = ['5.0']
    s.license      = { :type => "Commercial", :file => "LICENSE.md" }
    s.author       = { "Aravind G S" => "aravind.gs@whatfix.com" }
    s.source       = { :http => "https://github.com/Leap-Platform/leap-ios/releases/download/2.3.0/LeapSDK.xcframework.zip", :sha256 => "6949f88c70a57c0b27ba72b108127038ba83c2fb4c1d9cefe58f20ea4d521cd8" }
    s.vendored_frameworks = "LeapSDK.xcframework"
    s.frameworks   = 'UIKit', 'Webkit', 'AVFoundation'
    s.dependency 'LeapCoreSDK', '2.3.0'
  end
