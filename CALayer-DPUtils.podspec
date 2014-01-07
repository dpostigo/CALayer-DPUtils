Pod::Spec.new do |s|
  s.name         = "CALayer-DPUtils"
  s.version      = "0.1.0"
  s.summary      = "Utilities for CALayer."
  s.homepage     = "http://dpostigo.com"
  s.license      = 'BSD'
  s.author       = { "Dani Postigo" => "dani@firstperson.is" }
  # s.source       = { :git => "https://github.com/dpostigo/CALayer-DPUtils.git", :tag => s.version.to_s }
  s.source       = { :git => "https://github.com/dpostigo/CALayer-DPUtils.git", :commit => 'c2cb3528b907e175aead5863f1e2cf10b434802d' }

  s.ios.deployment_target = '4.3'
  s.osx.deployment_target = '10.7'

  s.osx.source_files = 'CALayer-DPUtils/*.{h,m}', 'CALayer-DPUtils-OSX/*.{h,m}'
  s.ios.source_files = 'CALayer-DPUtils/*.{h,m}', 'CALayer-DPUtils-iOS/*.{h,m}'

  s.frameworks = 'QuartzCore'
  s.ios.frameworks = 'UIKit'
end
