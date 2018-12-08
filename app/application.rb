class App
  def call(env)
    resp = Rack::Response.new
    resp.write choose_greeting
    resp.finish
  end
  
  def choose_greeting
    greeting = ""
    if (Time.new.hour) > 12
      greeting = "Good Afternoon!"
    else
      greeting = "Good Morning!"
    end
    greeting
  end
end