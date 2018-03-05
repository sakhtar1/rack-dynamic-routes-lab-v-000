class Application

  @@item = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path=="/items"
      resp.write "#{Item.price}"
      resp.status = 200
    elsif req.path!="/items"
      resp.write "Route not found"
      resp.status = 400
    else
      resp.write "Route not found"
      resp.status = 404
    end

    resp.finish
  end
end
