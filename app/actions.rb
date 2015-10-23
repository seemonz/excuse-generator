helpers do

  def save_excuse
    excuse = Excuse.new(beginnings_id: @beginning.id, middles_id: @middle.id, finals_id: @final.id)
    if excuse
      excuse.save
    else
      excuse = Excuse.where(beginnings_id: @beginning.id, middles_id: @middle.id, finals_id: @final.id)
    end
  end

end

# Homepage (Root path)
get '/' do
  erb :index
end

# clicking late button
get '/:category' do 
  #WORRY ABOUT /NIL OR /GARBARGEGEGE
  # binding.pry
  @beginning = Beginning.get_phrase(params[:category])
  @middle = Middle.get_phrase
  @final = Final.get_phrase
  #save_excuse
  erb :excuse_gen
end

# clicking absent button
# get '/absent' do
#   @category = 'absent'
#   get_beginning
#   get_middle
#   get_final
#   save_excuse
#   erb :excuse_gen
# end

# # clicking dont_want_to button
# get '/dont_want_to' do
#   @category = 'dont_want_to'
#   get_beginning
#   get_middle
#   get_final
#   save_excuse
#   erb :excuse_gen
# end

# # clicking dont_have_it button
# get '/dont_have_it' do
#   @category = 'dont_have_it'
#   get_beginning
#   get_middle
#   get_final
#   save_excuse
#   erb :excuse_gen
# end