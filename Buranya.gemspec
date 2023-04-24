# frozen_string_literal: true

require_relative "lib/Buranya/version"

Gem::Specification.new do |spec|
  spec.name = "Buranya"
  spec.version = Buranya::VERSION
  spec.authors = [%w{Negative}, %w{Luneroshay}, %w{maplesyropp}, %w{Askobarus}, %w{Arantir}]
  spec.email = [%w{mafilimonov@sfedu.ru}, %w{dridadodridado@gmail.com}, %w{iberezhnaia@sfedu.ru}, %w{sesalnikov@sfedu.ru}, %w{glebatya2281@yandex.ru}]

  spec.summary = "Cat pictures and jokes (mostly)"
  spec.homepage = "https://github.com/Negative228/Buranya"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Negative228/Buranya"
  spec.metadata["changelog_uri"] = "https://github.com/Negative228/Buranya/blob/main/README.md"

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_dependency "httparty"
  spec.add_dependency "launchy"

end
