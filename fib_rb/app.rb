# http_server.rb
require 'socket'
server = TCPServer.new 3000

def get_number(request)
  full_params = request.split(' ')[1]
  full_params.split('/')[2].to_i
end

def fib(number)
  case number
  when 0, 1
    1
  else
    fib(number - 2) + fib(number - 1)
  end
end

while (session = server.accept)
  request = session.gets
  number = get_number(request)
  result = fib(number)
  session.print "HTTP/1.1 200\r\n" # 1
  session.print "Content-Type: text/html\r\n" # 2
  session.print "\r\n" # 3
  session.print result

  session.close
end
