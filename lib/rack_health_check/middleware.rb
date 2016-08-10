module RackHealthCheck
  class Middleware
    def initialize(app)
      @app = app
    end

    def call(env)
      if env['PATH_INFO'] == '/health_check'.freeze
        return [200, {}, [''.freeze]]
      end

      @app.call(env)
    end
  end
end
