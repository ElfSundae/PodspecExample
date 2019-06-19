Pod::Spec.new do |s|
  s.name        = 'ESFramework'
  s.version     = '3.14.0'
  s.license     = { :type => 'MIT', :file => 'LICENSE' }
  s.summary     = 'ESFramework is an efficient, small framework for iOS.'
  s.homepage    = 'https://github.com/ElfSundae/ESFramework'
  s.authors     = { 'Elf Sundae' => 'https://0x123.com' }
  s.source      = { :git => 'https://github.com/ElfSundae/ESFramework.git', :tag => s.version }

  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'

  s.source_files = 'ESFramework/ESFramework.h'

  s.subspec 'Core' do |ss|
    ss.source_files = 'ESFramework/Core/**/*.{h,m}'
    ss.frameworks = 'CoreGraphics'
  end

  s.subspec 'Foundation' do |ss|
    ss.source_files = 'ESFramework/Foundation/**/*.{h,m}'
    ss.frameworks = 'Security'
    ss.dependency 'ESFramework/Core'
  end

  s.subspec 'Network' do |ss|
    ss.ios.deployment_target = '9.0'
    ss.osx.deployment_target = '10.11'
    ss.tvos.deployment_target = '9.0'

    ss.source_files = 'ESFramework/Network/**/*.{h,m}'
    ss.frameworks = 'SystemConfiguration', 'CoreTelephony'
  end

  s.subspec 'UIKit' do |ss|
    ss.ios.deployment_target = '9.0'
    ss.tvos.deployment_target = '9.0'

    ss.source_files = 'ESFramework/UIKit/**/*.{h,m}'
    ss.dependency 'ESFramework/Foundation'
    ss.dependency 'ESFramework/Network'
    ss.dependency 'AFNetworking/Reachability', '>= 2.0'
  end
end