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
  @category = 'late'
  erb :excuse_gen
end

# clicking absent button
get '/absent' do
  # new excuse object from generate method in generate file
  # use helper method to check if a unique excuse exists
  #   this check method can save if its a unique excuse
  # take excuse object and save as instance variable and send to erb for display.
  @category = 'absent'
  erb :excuse_gen
end

# clicking dont_want_to button
get '/dont_want_to' do
  # new excuse object from generate method in generate file
  # use helper method to check if a unique excuse exists
  #   this check method can save if its a unique excuse
  # take excuse object and save as instance variable and send to erb for display.
  @category = 'dont_want_to'
  erb :excuse_gen
end

# clicking dont_have_it button
get '/dont_have_it' do
  # new excuse object from generate method in generate file
  # use helper method to check if a unique excuse exists
  #   this check method can save if its a unique excuse
  # take excuse object and save as instance variable and send to erb for display.
  @category = 'dont_have_it'
  erb :excuse_gen
end