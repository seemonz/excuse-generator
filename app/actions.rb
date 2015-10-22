# Homepage (Root path)
get '/' do
  erb :index
end

# clicking late button
get '/late' do
  # new excuse object from generate method in generate file
  # use helper method to check if a unique excuse exists
  #   this check method can save if its a unique excuse
  # take excuse object and save as instance variable and send to erb for display.
  erb :late 
end

# clicking absent button
get '/absent' do
  # new excuse object from generate method in generate file
  # use helper method to check if a unique excuse exists
  #   this check method can save if its a unique excuse
  # take excuse object and save as instance variable and send to erb for display.
  erb :absent 
end

# clicking dont_want_to button
get '/dont_want_to' do
  # new excuse object from generate method in generate file
  # use helper method to check if a unique excuse exists
  #   this check method can save if its a unique excuse
  # take excuse object and save as instance variable and send to erb for display.
  erb :dont_want_to 
end

# clicking dont_have_it button
get '/dont_have_it' do
  # new excuse object from generate method in generate file
  # use helper method to check if a unique excuse exists
  #   this check method can save if its a unique excuse
  # take excuse object and save as instance variable and send to erb for display.
  erb :dont_have_it 
end