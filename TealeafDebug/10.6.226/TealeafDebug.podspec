
Pod::Spec.new do |s|
  s.name = 'TealeafDebug'
  s.version = '10.6.226'
  s.author = 'Acoustic, L.P.'
  s.license = { :type => 'Proprietary, Acoustic, L.P.', :text => 'https://github.com/acoustic-analytics/Tealeaf/blob/master/Licenses/License' }
  s.homepage = 'https://github.com/acoustic-analytics/Tealeaf'
  s.summary = 'Acoustic Tealeaf EOCore iOS SDK'
  s.cocoapods_version = '>= 1.10.0'
  s.platforms = { :ios => '12.0' }
  s.source = { :git => 'https://github.com/acoustic-analytics/Tealeaf.git', :tag => '10.6.226'}
  s.default_subspec = 'Core'
  s.subspec 'Core' do |core|
    core.frameworks = 'SystemConfiguration', 'CoreTelephony', 'CoreLocation', 'WebKit'
    core.library = 'z'
    core.resource = "SDKs/iOS/Debug/TLFResources.bundle"
    core.xcconfig = { 'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/SDKs/iOS/Debug/Tealeaf.xcframework/*/Tealeaf.framework/Headers/"/** ' }
    core.vendored_frameworks = 'SDKs/iOS/Debug/Tealeaf.xcframework'
    core.dependency 'EOCoreDebug'
  end
end