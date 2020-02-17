require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse
  end

  get "/square/:number" do
    @number = params[:number].to_i
    (@number**2).to_s
  end

  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    params[:phrase]*@num
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
     @word1 = params[:word1]
    # @word2 = 
    # @word3 = 
    # @word4 =
    # @word5 = 
    @phrase = @word1.concat(params[:word1], " ", params[:word2], " ", params[:word3], " ", params[:word4], " ",params[:word5], ".")
    @phrase
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    
    if @operation == "add"
      (@num1+@num2).to_s
    elsif @operation == "subtract"
      (@num1-@num2).to_s
    elsif @operation == "multiply"
      (@num1*@num2).to_s
    elsif @operation == "divide"
      (@num1/@num2).to_s
    else
      nil
    end
  end


end