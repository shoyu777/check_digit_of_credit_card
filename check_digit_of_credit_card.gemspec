
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "check_digit_of_credit_card/version"

Gem::Specification.new do |spec|
  spec.name          = "check_digit_of_credit_card"
  spec.version       = CheckDigitOfCreditCard::VERSION
  spec.authors       = ["shoyu777"]
  spec.email         = [""]

  spec.summary       = %q{To verify a check digit of credit card.}
  spec.description   = %q{To verify a check digit of credit card.}
  spec.homepage      = "https://github.com/shoyu777/check_digit_of_credit_card"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
