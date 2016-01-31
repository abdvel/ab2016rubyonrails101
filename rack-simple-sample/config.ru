app = proc do |env|
  [ 200,{'Content-Type' => 'text/plain'},['Hello from Puma!'] ]
end

run app
