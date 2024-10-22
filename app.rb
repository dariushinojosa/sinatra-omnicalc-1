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

end

get ("/random/results") do

end

get ("/payment/results") do

end
