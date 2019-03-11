require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @username = params[:name]
    "#{@username.reverse}"
  end

  get "/square/:number" do
    @number = params[:number]
    "#{@number.to_i**2}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number]
    @phrase = params[:phrase]

    "#{@phrase*(@number.to_i)}"
  end
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{[@word1,@word2,@word3,@word4,@word5].join(" ")}."
  end
  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]
    "#{calculator(@operation,@number1,@number2)}"
  end
  def calculator(op, num1, num2)
    case op
    when "add"
      num1.to_i + num2.to_i
    when "subtract"
      num1.to_i - num2.to_i
    when "multiply"
      num1.to_i * num2.to_i
    when "divide"
      num1.to_i / num2.to_i
    end
  end

end
