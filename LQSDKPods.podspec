#
# Be sure to run `pod lib lint LQSDKPods.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LQSDKPods'
  s.version          = '0.3.4'
  s.summary          = 'A short description of LQSDKPods,Just a Tester'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/LQYaphets/LQSDKPods'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '柳清' => '1345230233@qq.com' }
  s.source           = { :git => 'https://github.com/LQYaphets/LQSDKPods.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.swift_version = '4.0', '4.2', '5.0'

  # s.source_files = 'LQSDKPods/Classes/**/*'
  s.user_target_xcconfig = {'OTHER_LDFLAGS' => ['-lObjC','-all_load']}
  # s.resource_bundles = {
  #   'LQSDKPods' => ['LQSDKPods/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  s.vendored_frameworks = 'LQSDKPods/Libs/TestGeneralFramework.framework'
  
  s.dependency 'ReactorKit'
  s.dependency 'RxCocoa'
  s.dependency 'RxCodable'
  s.dependency 'SnapKit'
  
end
