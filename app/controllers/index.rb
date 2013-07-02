get '/' do
  erb :index
end

post '/color' do
  # cell = rand(1..9) commented out error in challenge
  cell = rand(0..8)
  color = "#" + "%06x" % (rand * 0xffffff)
  content_type :json # returns JSON
  {:cell => cell, :color => color}.to_json # creates JSON
end