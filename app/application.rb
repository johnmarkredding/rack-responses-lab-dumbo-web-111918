<<<<<<< HEAD
class Application
=======
class App
>>>>>>> d1b9d9b91dcdedf325b47de3dae1cca52aaf7c10
  def call(env)
    resp = Rack::Response.new
    resp.write choose_greeting
    resp.finish
  end
  
  def choose_greeting
    greeting = ""
<<<<<<< HEAD
    if (Time.now.hour <= 12)
      greeting = "Good Morning!"
    else
      greeting = "Good Afternoon!"
=======
    if (Time.new.hour) > 12
      greeting = "Good Afternoon!"
    else
      greeting = "Good Morning!"
>>>>>>> d1b9d9b91dcdedf325b47de3dae1cca52aaf7c10
    end
    greeting
  end
end