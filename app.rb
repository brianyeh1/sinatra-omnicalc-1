require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:square_new)
end

get("/square/new") do
  erb(:square_new)
end

get("/square/results") do
  @the_num = params.fetch("user_number").to_f
  @the_result = @the_num ** 2
  
  erb(:square_results)
end

get("/square_root/new") do
  erb(:square_root)
end

get("/random/new") do
  erb(:random)
end

get("/payment/new") do
  erb(:payment)
end
