Pod::Spec.new do |s|
    s.name         = "LeapSDK"
    s.version      = "2.0.14"
    s.summary      = "Product engagement made easy"
    s.description  = <<-DESC 
    Product engagement made easy. Onboard, nudge, & delight your mobile users
                     DESC
    s.homepage     = "https://whatfix.com/products/mobile/"
    s.platform	   = :ios, "10.0"
    s.swift_versions = ['5.0']
    s.license      = { :type => "BSD",:file=>"LICENSE.md"}
    s.author       = { "Aravind G S" => "aravind.gs@whatfix.com" }
    s.source       = { :git => "https://github.com/Leap-Platform/leap-ios.git", :tag => s.version.to_s }
    s.vendored_frameworks = "LeapSDK.xcframework"
    s.frameworks   = 'UIKit', 'Webkit', 'AVFoundation'
    s.dependency 'LeapCoreSDK', '2.0.14'
  end
