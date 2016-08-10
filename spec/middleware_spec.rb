require 'rack'

describe RackHealthCheck::Middleware do
  let(:app) { proc{[404,{},['Hello, world.']]} }
  let(:stack) { RackHealthCheck::Middleware.new(app) }
  let(:request) { Rack::MockRequest.new(stack) }

  describe 'health check' do
    it "should return 200 on /health_check request" do
      response = request.get('/health_check')
      expect(response.status).to eql(200)
    end

    it "should return 404 otherwise" do
      response = request.get('/')
      expect(response.status).to eql(404)
    end
  end
end
