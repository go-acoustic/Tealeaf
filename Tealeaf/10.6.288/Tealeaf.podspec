
Pod::Spec.new do |s|
  s.name = 'Tealeaf'
  s.version = '10.6.288'
  s.author = 'Acoustic, L.P.'
  s.license = { :type => 'Proprietary, Acoustic, L.P.', :text => 'https://github.com/go-acoustic/Tealeaf/blob/master/Licenses/License' }
  s.homepage = 'https://github.com/go-acoustic/Tealeaf'
  s.summary = 'Acoustic Tealeaf EOCore iOS SDK'
  s.cocoapods_version = '>= 1.10.0'
  s.platforms = { :ios => '12.0' }
  s.source = { :git => 'https://github.com/go-acoustic/Tealeaf.git', :tag => '10.6.288'}
  s.default_subspec = 'Core'
  s.subspec 'Core' do |core|
    core.frameworks = 'SystemConfiguration', 'CoreTelephony', 'CoreLocation', 'WebKit'
    core.library = 'z'
    core.resource = "SDKs/iOS/Release/TLFResources.bundle"
    core.xcconfig = { 'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/SDKs/iOS/Release/Tealeaf.xcframework/*/Tealeaf.framework/Headers/"/** ' }
    core.vendored_frameworks = 'SDKs/iOS/Release/Tealeaf.xcframework'
    core.dependency 'EOCore'
  end
end