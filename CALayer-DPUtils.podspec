Pod::Spec.new do |s|
  s.name         = "CALayer-DPUtils"
  s.version      = "0.0.5"
  s.summary      = "Utilities for CALayer."
  s.homepage     = "http://dpostigo.com"
  s.license      = 'BSD'
  s.author       = { "Dani Postigo" => "dani@firstperson.is" }
  s.source       = { :git => "https://github.com/dpostigo/CALayer-DPUtils.git", :tag => s.version.to_s }
  s.ios.deployment_target = '5.0'
  s.osx.deployment_target = '10.7'
  s.source_files = 'CALayer-DPUtils/*.{h,m}'
  s.frameworks = 'QuartzCore'
end
