require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @user_name = params[:name].reverse
    # "Hello #{@user_name}!"
  end

  get "/square/:number" do
    @num = params[:number].to_i
    @square = @num * @num
    "#{@square}"
    # "Hello #{@user_name}!"
  end

  get "/say/:number/:phrase" do
    @returnedstr = ""
    @num = params[:number].to_i
    @str = params[:phrase]
      @num.times do
        @returnedstr += @str
      end
        @returnedstr
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."

       #{@phrase}"
  end

  get "/:operation/:number1/:number2" do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operator = params[:operation]
    if @operator == "add"
      @add = @number1 + @number2
      @add.to_s
    elsif
      @operator == "subtract"
      @subtract = @number1 - @number2
      @subtract.to_s
    elsif
      @operator == "multiply"
      @product = @number1 * @number2
      @product.to_s
    else
      @divide = @number1.to_f/@number2.to_f
      @divide.to_s
    end

  end

       # @subtract = params[:number1].to_i - params[:number2].to_i
       # @subtract.to_s
       #
       # @add = params[:number1].to_i + params[:number2].to_i
       # @add.to_s
       # @product = params[:number1].to_i * params[:number2].to_i
       # @product.to_s
end
