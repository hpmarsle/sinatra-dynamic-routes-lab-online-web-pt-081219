require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
    "#{params[:name].reverse}"
  end

  get '/square/:number' do 
    @square= params[:number].to_i**2
    @square.to_s
  end 

  get '/say/:number/:phrase' do 
    @num = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase}" * @num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end
  
  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @operation = params[:operation]
    if @operation == "add"
      (@num1 + @num2).to_s 
    elsif @operation == "subtract"
      (@num1 - @num2).to_s 
    elsif @operation == "multiply"
      (@num1 * @num2).to_s 
    elsif @operation == "divide"
      (@num1 / @num2).to_s 
    else 
      "I didn't get that"
    end 
  end 
end