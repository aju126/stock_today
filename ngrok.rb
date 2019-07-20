require 'ngrok/tunnel'
options = {addr: ENV['PORT']}
if File.file? '.ngrok'
  options[:config] = '.ngrok'
elsif File.file? ENV['HOME'] + '/.ngrok'
  options[:config] = ENV['HOME'] + '/.ngrok'
end
if ENV['NGROK_INSPECT']
  options[:inspect] = ENV['NGROK_INSPECT']
end
puts "[NGROK] tunneling at " + Ngrok::Tunnel.start(options)
unless ENV['NGROK_INSPECT'] == 'false'
  puts "[NGROK] inspector web interface listening at http://127.0.0.1:4040"
end