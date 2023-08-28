#
# Be sure to run `pod lib lint BAlertKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'BAlertKit'
  s.version          = '0.1.0'
  s.summary          = 'A short description of BAlertKit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/BComponent/BAlertkit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '1250829271@qq.com' => 'wangbaoming@log56.com' }
  s.source           = { :git => 'https://github.com/BComponent/BAlertkit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  #s.source_files = 'BAlertKit/Classes/**/*'
  s.requires_arc = true
  
  s.subspec 'BPopViewManager' do |ext|
    ext.source_files = 'BAlertKit/Classes/BPopViewManager/*.{h,m}'
    #non_arc_files = 'BAlertKit/Classes/BPopViewManager/LGGTMBase64.m','BAlertKit/Classes/BPopViewManager/LGGTMBase64.h'#这是需要添加mrc标识的文件，为相对路径
   # ext.exclude_files = non_arc_files#在工程中首先排除一下
    #ext.subspec 'no-arc' do |sp|#一下就是子设置，为需要添加mrc标识的文件进行设置
    #sp.source_files = non_arc_files
    #sp.requires_arc = false
    end
  # s.resource_bundles = {
  #   'BAlertKit' => ['BAlertKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
