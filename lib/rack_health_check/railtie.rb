module RackHealthCheck
  class Railtie < Rails::Railtie
    initializer "rack_health_check.configure_rails_initialization" do
      Rails.application.middleware.insert_before 0, RackHealthCheck::Middleware
    end
  end
end
