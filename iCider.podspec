#
# Be sure to run `pod lib lint iCider.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'iCider'
  s.version          = '0.1.0'
  s.summary          = 'Helper library for conversion from Android to iOS.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
  Helper library for conversion from Android to iOS.

  I encountered many problems while converting an Android app to an iOS app.
  I made a library with the solutions to these problems.
                       DESC

  s.homepage         = 'https://github.com/tobwithu/iCider'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'tobwithu' => 'tobwithu@gmail.com' }
  s.source           = { :git => 'https://github.com/tobwithu/iCider.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.swift_versions = '5'
  
  s.source_files = 'iCider/Classes/**/*'
  
  # s.resource_bundles = {
  #   'iCider' => ['iCider/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
