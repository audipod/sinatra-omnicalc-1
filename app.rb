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

get("/square/root") do
  erb(:new_root_calc)
end

