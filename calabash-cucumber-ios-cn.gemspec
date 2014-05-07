# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "calabash-cucumber-ios-cn/version"

Gem::Specification.new do |s|
  s.name        = "calabash-cucumber-ios-cn"
  s.version     = Calabash::Cucumber::IOS::CN::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Li Jie"]
  s.email       = ["cpunion@gmail.com"]
  s.homepage    = "http://github.com/cpunion/calabash-cucumber-ios-cn"
  s.summary     = %q{Chinese translation of calabash-cucumber}
  s.description = %q{Chinese translation of calabash-cucumber.}
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_paths = ["lib"]
  s.licenses = ["BSD"]

  s.add_runtime_dependency 'calabash-cucumber', '~> 0.9', '>= 0.9.168'
  s.add_runtime_dependency 'calabash-android', '~> 0.4', '>= 0.4.21'

end
