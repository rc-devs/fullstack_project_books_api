class Rack::Attack
  Rack::Attack.cache.store = ActiveSupport::Cache::MemoryStore.new

  throttle('create_user/ip', limit: 1, period: 20.seconds) do |req|
    if req.path == '/users' && req.post?
      req.ip
    end
  end
end