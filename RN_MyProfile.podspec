#
# Be sure to run `pod lib lint RN_MyProfile.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RN_MyProfile'
  s.version          = '0.1.0'
  s.summary          = 'A short description of RN_MyProfile.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/CodeisSunShine/RN_MyProfile'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '192.168.0.222' => 'myloveiscodejie@163.com' }
  s.source           = { :git => 'https://github.com/CodeisSunShine/RN_MyProfile.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'RN_MyProfile/Classes/**/*'
  
  s.resource = 'RN_MyProfile/Assets/**/*'

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
    s.dependency "React/Core"
    s.dependency "React/CxxBridge"
    s.dependency "React/DevSupport"
    s.dependency "React/RCTText"
    s.dependency "React/RCTNetwork"
    s.dependency "React/RCTWebSocket"
    s.dependency "React/RCTAnimation"
    s.dependency "React/RCTActionSheet"
    s.dependency "React/RCTImage"
    s.dependency "React/RCTSettings"
    s.dependency "React/RCTVibration"
    s.dependency "yoga"
    s.dependency "DoubleConversion"
    s.dependency "glog"
    s.dependency "Folly"
end
