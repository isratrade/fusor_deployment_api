require 'active_model_serializers'

module FusorDeploymentApi
  class Engine < ::Rails::Engine

    config.autoload_paths += Dir["#{config.root}/app/controllers/concerns"]
    config.autoload_paths += Dir["#{config.root}/app/serializers"]

    # Add any db migrations
    initializer "fusor.load_app_instance_data" do |app|
      app.config.paths['db/migrate'] += FusorDeploymentApi::Engine.paths['db/migrate'].existent
    end

  end
end
