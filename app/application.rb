require 'pry'

class Application

  def call(env)
    resp = Rack::Response.new

    t = Time.now
    t_integer = t.strftime("%H%M%S").to_i

    if t_integer > 120000
      resp.write "Good Afteroon!"
    else
      resp.write "Good Morning!"
    end

    resp.finish
  end

end
