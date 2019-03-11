require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
    get '/reversename/:name' do 
      params[:name].reverse
    end 

    # 2. Create a dynamic route at `get '/square/:number'` that accepts a number and returns the square of that number. 
    get '/square/:number' do 
      num = params[:number].to_i
      total = num**2
      total.to_s
      # 5 + 5.to_s
    end 

    # 3. Create a dynamic route at `get '/say/:number/:phrase'` that accepts a number and a phrase and returns that phrase in a string the number of times given.
    get '/say/:number/:phrase' do
      return_arr =[]
      number_of_times = params[:number].to_i
      number_of_times.times do
      return_value = params[:phrase]
      return_arr << return_value
      end
      # binding.pry
      return_arr.join("\n")
    end 

    # 4. Create a dynamic route at `get '/say/:word1/:word2/:word3/:word4/:word5'` that accepts five words and returns a string containing all five words 
    # (i.e. `word1 word2 word3 word4 word5`).

    get '/say/:word1/:word2/:word3/:word4/:word5' do 
      "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    end 
    # `get '/:operation/:number1/:number2'` that accepts an operation (add, subtract, multiply or divide) and performs the operation on the two numbers provided. For example, going to `/add/1/2` should render `3`

    get '/:operation/:number1/:number2' do 
      num1 = params[:number1].to_i
      num2 = params[:number2].to_i

    case params[:operation]
      when "add"
        total = num1 + num2
        total.to_s
      when "subtract"
        total = num1 - num2
        total.to_s
      when "multiply"
        total = num1 * num2
        total.to_s
      else 
        total = num1 / num2
        total.to_s
      end 
   end 

end