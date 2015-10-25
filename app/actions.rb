helpers do

  def category_valid?
    params[:category] == 'late' || params[:category] == 'absent' || params[:category] == 'dont_want_to' || params[:category] == 'dont_have_it'
  end

  def save_excuse
    Excuse.where(:beginnings_id => @beginning.id, :middles_id => @middle.id, :finals_id => @final.id).first_or_create
  end

  # def excuse_repeat?
  #   Excuse.where("beginnings_id = ? AND middles_id = ? AND finals_id = ?", @beginning.id, @middle.id, @final.id).length > 0
  # end

  def top_excuses
    Excuse.limit(5).order('upvote_count desc') # this works correctly
  end

end


# Homepage (Root path)
get '/' do
  @top5_excuses = top_excuses
  erb :excuse_gen
end

post '/upvote' do
  # not sure how to select the current excuse displayed. we need to grab that excuse call the increment_upvote method and save it.
  @top5_excuses = top_excuses
  @current_excuse = Excuse.find(params['current_excuse'])
  @current_excuse.increment_upvote
  @current_excuse.save
  @upvoted = true
  @beginning = @current_excuse.beginning
  @middle = @current_excuse.middle
  @final = @current_excuse.final
  erb :excuse_gen
end

# button click routes
get '/:category' do 
  if category_valid?
    @beginning = Beginning.get_phrase(params[:category])
    @middle = Middle.get_phrase
    @final = Final.get_phrase
    @current = save_excuse
    @top5_excuses = top_excuses
    erb :excuse_gen
  else
    @top5_excuses = top_excuses
    redirect '/'
  end
end

# get '/absent' do 
#   #WORRY ABOUT /NIL OR /GARBARGEGEGE
#   # binding.pry
#   @beginning = Beginning.get_phrase('absent')
#   @middle = Middle.get_phrase
#   @final = Final.get_phrase
#   save_excuse
#   @top5_excuses = top_excuses
#   erb :excuse_gen
# end

# get '/dont_want_to' do 
#   #WORRY ABOUT /NIL OR /GARBARGEGEGE
#   # binding.pry
#   @beginning = Beginning.get_phrase('dont_want_to')
#   @middle = Middle.get_phrase
#   @final = Final.get_phrase
#   save_excuse
#   @top5_excuses = top_excuses
#   erb :excuse_gen
# end

# get '/dont_have_it' do 
#   #WORRY ABOUT /NIL OR /GARBARGEGEGE
#   # binding.pry
#   @beginning = Beginning.get_phrase('dont_have_it')
#   @middle = Middle.get_phrase
#   @final = Final.get_phrase
#   save_excuse
#   @top5_excuses = top_excuses
#   erb :excuse_gen
# end



