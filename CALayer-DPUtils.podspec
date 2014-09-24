Pod::Spec.new do |s|
  s.name         = "CALayer-DPUtils"
  s.version      = "0.1.7"
  s.summary      = "Utilities for CALayer."
  s.homepage     = "http://dpostigo.com"
  s.license      = 'BSD'
  s.author       = { "Dani Postigo" => "dani@firstperson.is" }
  s.source       = { :git => "https://github.com/dpostigo/CALayer-DPUtils.git", :tag => s.version.to_s }


  s.ios.frameworks = 'UIKit'
  s.ios.deployment_target = '4.3'
  s.ios.source_files = 'CALayer-DPUtils/*.{h,m}', 'CALayer-DPUtils-iOS/*.{h,m}'


  s.osx.dependency 'DPKit-Utils'
  s.osx.deployment_target = '10.8'
  s.osx.source_files = 'CALayer-DPUtils/*.{h,m}', 'CALayer-DPUtils-OSX/*.{h,m}'

  s.frameworks = 'QuartzCore'


end
