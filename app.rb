require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:new_square_calc)
end

get("/square/new") do
  erb(:new_square_calc)
end

get("/square_root/new") do
  erb(:new_sqrt_calc)
end

get("/random/new") do
  erb(:new_random_calc)
end

get("/payment/new") do
  erb(:new_payment_calc)
end

get ("/square/results") do
  @the_num = params.fetch("users_number").to_f
  @the_result = @the_num ** 2
  erb(:square_results)
end

get ("/square_root/results") do
  @the_num = params.fetch("users_number").to_f
  @the_result = @the_num ** 0.5
  erb(:sqrt_results)
end

get ("/random/results") do
  @the_min = params.fetch("users_min").to_f
  @the_max = params.fetch("users_max").to_f
  @the_result = rand(@the_min..@the_max)
  erb(:random_results)
end

get ("/payment/results") do

end
