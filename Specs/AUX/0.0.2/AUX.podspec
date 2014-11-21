Pod::Spec.new do |s|
  v = __FILE__.split("/")[-2]

  s.name         = "AUX"
  s.summary      = "Collection of useful Cocoa (mainly UIKit) categories with a goal of having no dependencies and good test coverage."
  s.homepage     = "https://github.com/appscape/AUX"
  s.license      = { :type => 'MIT' }
  s.source       = { :git  => 'https://github.com/appscape/AUX.git', :tag => v }
  s.authors      = { 'Esad Hajdarevic' => 'esad@esse.at' }
  s.platform     = :ios, '5.0'
  s.requires_arc = true
  s.version      = v
  s.source_files = 'Sources/*.{h,m}'

  s.subspec 'Log' do |ss|
    ss.summary      = "Simple logging helper based on Clang function overloading"
    ss.source_files = 'Sources/AUXLog.{h,m}'
    ss.frameworks   = 'UIKit', 'Foundation'
  end

  s.subspec 'NSObject' do |ss|
    ss.summary      = "NSObject categories"
    ss.source_files = 'Sources/NSObject*.{h,m}'
    ss.frameworks   = 'Foundation'
  end

  s.subspec 'NSData' do |ss|
    ss.summary      = "NSData categories"
    ss.source_files = 'Sources/NSData*.{h,m}'
    ss.frameworks   = 'Foundation'
  end

  s.subspec 'UIColor' do |ss|
    ss.summary      = "UIColor categories"
    ss.source_files = 'Sources/UIColor*.{h,m}'
    ss.frameworks   = 'UIKit', 'Foundation'
  end

  s.subspec 'UIImage' do |ss|
    ss.summary      = "UIImage categories"
    ss.source_files = 'Sources/UIImage*.{h,m}'
    ss.frameworks   = 'UIKit', 'Foundation'
  end
end