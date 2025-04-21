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
  @the_results = @the_num ** 2
  
  erb(:square_results)
end

get("/square_root/new") do
  erb(:square_root_new)
end

get("/square_root/results") do
  @the_num = params.fetch("user_number").to_f
  @the_results = @the_num ** 0.5
  
  erb(:square_root_results)
end

get("/random/new") do
  erb(:random_new)
end

get("/random/results") do
  @min_num = params.fetch("user_min").to_f
  @max_num = params.fetch("user_max").to_f
  @the_results = random(@min_num..@max_num)
  
  erb(:random_results)
end

get("/payment/new") do
  erb(:payment)
end
