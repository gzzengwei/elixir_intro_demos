require 'sinatra'

set :port, 3000

def fib(number)
  case number
  when 0, 1
    1
  else
    fib(number - 2) + fib(number - 1)
  end
end

get '/fib/:number' do
  fib(params['number'].to_i).to_s
end
