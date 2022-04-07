#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint rtmppublisher.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_rtmp'
  s.version          = '0.0.2'
  s.summary          = 'FLutter plugin to allow rtmp to work with ios.'
  s.description      = <<-DESC
A new flutter plugin project.
                       DESC
  s.homepage         = 'https://github.com/turbatdd/flutter_rtmp'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'turbatdd' => 'd.turbat@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'HaishinKit', '~> 1.0.10'
  s.platform = :ios, '12.0'

  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  s.swift_version = '5.0'
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
end
