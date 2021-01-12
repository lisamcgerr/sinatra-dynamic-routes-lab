require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reversed_name = params[:name].reverse
    "#{@reversed_name}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @squared_number = @num * @num
    "#{@squared_number}"
  end

  get '/say/:number/:phrase' do
    num_string = params[:phrase] * params[:number].to_i 
    num_string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word_array = [ ]
    word_array << params[:word1]
    word_array << params[:word2]
    word_array << params[:word3]
    word_array << params[:word4]
    word_array << params[:word5]
    
    word_array.join(' ') + "."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    case params[:operation]
    when 'add'
      @addition = @num1 + @num2
      @addition.to_s
    when 'subtract'
      @subtraction = @num1 - @num2
      @subtraction.to_s
    when 'multiply'
      @multiplication = @num1 * @num2
      @multiplication.to_s
    when 'divide'
      @division = @num1 / @num2
      @division.to_s
    end
  end

  

end