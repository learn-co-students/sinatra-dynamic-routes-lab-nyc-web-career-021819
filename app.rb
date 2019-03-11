require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name].reverse
    "#{@name}"
  end

  get "/square/:number" do
    @num = params[:number].to_i
    "#{@num * @num}"
  end

  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @phrase = params[:phrase]

    i = 0
    str = ''

    while i < @num do
      str += @phrase
      i+=1
    end

    "#{str}"

  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."

  end

  get "/:operation/:number1/:number2" do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @op = params[:operation]

    answer = 'Unable to perform this operation'

    case params[:operation]
      when 'add'
        answer = (@num1 + @num2).to_s
      when 'subtract'
        answer = (@num1 - @num2).to_s
      when 'multiply'
        answer = (@num1 * @num2).to_s
      when 'divide'
        answer = (@num1 / @num2).to_s
      end
      answer
  end

end
