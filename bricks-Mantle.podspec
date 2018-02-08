#
# Be sure to run `pod lib lint bricks-Mantle.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "bricks-Mantle"
  s.version          = "0.1.0"
  s.summary          = "Helper methods and utilities classes to get rid of mantle boilerplate."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!
  s.description      = <<-DESC
  Helps methods and utilities classes to get rid of mantle boilerplate.This is a spin off of bricks pod
  to handle exclusively mantle objects. 
                       DESC

  s.homepage         = "https://github.com/thiagolioy/bricks-Mantle"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "Thiago Lioy" => "thiagolioy@gmail.com" }
  s.source           = { :git => "https://github.com/thiagolioy/bricks-Mantle.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'bricks-Mantle' => ['Pod/Assets/*.png']
  }

  s.public_header_files = 'Pod/Classes/**/*.h'
  s.dependency 'Mantle', '~> 2.0.7'
end
