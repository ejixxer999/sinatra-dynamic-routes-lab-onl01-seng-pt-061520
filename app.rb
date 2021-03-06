require_relative 'config/environment'

class App < Sinatra::Base
 get '/reversename/:name' do
   @name = params[:name].reverse
   @name
 end 

 get '/square/:number' do
   @number = params[:number].to_i ** 2
   @number.to_s
 end

 get '/say/:number/:phrase' do 
  speak = ""
  @num = params[:number].to_i
  @phrase = params[:phrase]
  @num.times { speak += "#{@phrase}\n"}
  speak
 end 

 get "/say/:word1/:word2/:word3/:word4/:word5" do
  "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
end
 

get '/:operation/:number1/:number2' do
  @operation = params[:operation]
  @num1 = params[:number1].to_i
  @num2 = params[:number2].to_i
  erb :operation
end






end