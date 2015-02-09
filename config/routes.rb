Foreman::Application.routes.draw do

  namespace :api, :defaults => {:format => 'json'} do

    scope "(:apiv)", :module => :v2, :defaults => {:apiv => 'v2'}, :apiv => /v2|v3/, :constraints => ApiConstraints.new(:version => 2) do

      resources :fusor_deployments, :except => [:new, :edit]

      resources :organizations, :only => [] do
        resources :fusor_deployments, :except => [:new, :edit]
      end

    end
  end
end
