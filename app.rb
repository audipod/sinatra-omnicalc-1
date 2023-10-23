require "sinatra"
require "sinatra/reloader"

get("/howdy") do
  erb(:hello)
end

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/square/new") do
  erb(:new_square_calc)
end

get("/square/results") do

  @the_num = params.fetch("user_number").to_f
  @the_result = params.fetch("user_number").to_f * params.fetch("user_number").to_f

  erb(:square_results)

end

get("/square_root/new") do
  erb(:new_root_calc)
end

get ("/square_root/results") do
  @the_num = params.fetch("user_number").to_f
  @the_result = Math.sqrt(@the_num)
  erb(:root_results)
end

get("/payment/new") do
  erb(:new_payment)
end

get ("/payment/results") do
  @the_APR = params.fetch("user_apr").to_f
  @the_years = params.fetch("user_years").to_f
  @the_principal = params.fetch("user_pv").to_f
  
  r = @the_APR / 12
  numerator = r * @the_principal
  denominator = 1 - (1 + r)**-@the_years
  @the_payment = numerator / denominator

  erb(:payment_results)
end
