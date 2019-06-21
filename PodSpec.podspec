Pod::Spec.new do |s|
  s.name        = 'PodspecExample'
  s.version     = '0.0.1'
  s.license     = { :type => 'MIT', :file => 'LICENSE' }
  s.summary     = 'PodspecExample summary'
  s.homepage    = 'https://github.com/ElfSundae/PodspecExample'
  s.authors     = { 'Elf Sundae' => 'https://0x123.com' }
  s.source      = { :git => 'https://github.com/ElfSundae/PodspecExample.git', :tag => s.version }

  s.ios.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'
  s.tvos.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'

  s.source_files = 'PodspecExample/PodspecExample.h'

  s.subspec 'Core' do |ss|
    ss.source_files = 'PodspecExample/Core/**/*.{h,m}'
    ss.frameworks = 'Security'
    ss.dependency 'ESFramework', '~> 3.14'
  end
end
