Pod::Spec.new do |s|
  s.name         = "CALayer-DPUtils"
  s.version      = "0.0.3"
  s.summary      = "My first Cocoapod."
  s.homepage     = "http://dpostigo.com"
  s.license      = 'BSD'
  s.author       = { "Dani Postigo" => "dani@firstperson.is" }
  s.source       = { :git => "https://github.com/dpostigo/CALayer-DPUtils.git", :tag => s.version.to_s }
  s.platform     = :osx
  s.source_files = 'CALayer-DPUtils/*.{h,m}'
  s.frameworks = 'QuartzCore'
end
