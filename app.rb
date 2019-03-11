require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number]
    "#{@number.to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    "#{@phrase * @number.to_i}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    "#{@w1 + " " + @w2 + " " + @w3 + " " + @w4 + " " + @w5 + '.'}"
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]
    if @operation == "add"
      "#{@number1.to_i + @number2.to_i}"
    elsif @operation == "subtract"
      "#{@number2.to_i - @number1.to_i}"
    elsif @operation == "multiply"
      "#{@number1.to_i * @number2.to_i}"
    else
      "#{@number1.to_i/@number2.to_i}"
    end
  end


end
