module Subscribem
  class Engine < ::Rails::Engine
    isolate_namespace Subscribem
    config.generators do |g|
    	g.test_framework :rspec, :view_specs => false
    end
    require 'warden'
    initializer 'subscribem.middleware.warden' do
    	Rails.application.config.middleware.use Warden::Manager
    end
  end
end
