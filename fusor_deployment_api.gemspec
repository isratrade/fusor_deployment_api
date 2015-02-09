require File.expand_path('../lib/fusor_deployment_api/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = "fusor_deployment_api"
  s.version     = FusorDeploymentApi::VERSION
  s.date        = Date.today.to_s
  s.authors     = ["Joseph Magen"]
  s.email       = ["jmagen@redhat.com"]
  s.homepage    = ""
  s.summary     = "Fusor Deployment API"
  s.description = ""

  s.files = Dir["{app,config,db,lib}/**/*"] + ["LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "active_model_serializers", '~> 0.9'
end
