# use_frameworks!

workspace 'PodspecExample.xcworkspace'
project 'Example/Example.xcodeproj'

abstract_target 'Example' do
    pod 'PodspecExample', :path => '.'

    target 'iOS Example' do
        platform :ios, '9.0'
    end

    target 'watchOS Example' do
        platform :watchos, '2.0'
    end

    target 'tvOS Example' do
        platform :tvos, '9.0'
    end

    target 'macOS Example' do
        platform :osx, '10.11'
    end
end
