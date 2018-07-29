require 'pry'

class Application
 
  def call(env)
    resp = Rack::Response.new
 
    t = Time.now
    t.strftime(%H%M%S)
    binding.pry
 
    if num_1==num_2 && num_2==num_3
      resp.write "You Win"
    else
      resp.write "You Lose"
    end
 
    resp.finish
  end
 
end