class Application
  def call(env)
    resp = Rack::Response.new
    resp.write choose_greeting
    resp.finish
  end
  
  def choose_greeting
    greeting = ""
    if (Time.now.hour <= 12)
      greeting = "Good Morning!"
    else
      greeting = "Good Afternoon!"
    end
    greeting
  end
end