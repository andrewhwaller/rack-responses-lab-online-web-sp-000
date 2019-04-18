class Application
  def call(env)
    resp = Rack::Response.new

    current_hour = Time.now.hour
    if currrent_hour =< 1200
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
    resp.finish
  end
end
