helpers do

  def save_excuse
    Excuse.where(:beginnings_id => @beginning.id, :middles_id => @middle.id, :finals_id => @final.id).first_or_create
    #binding.pry

    # if excuse_repeat?
    #   @excuse = Excuse.where("beginnings_id = ? AND middles_id = ? AND finals_id = ?", @beginning.id, @middle.id, @final.id)
    # else
    #   @excuse.save
    # end
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

# button click routes
get '/:category' do 
  #WORRY ABOUT /NIL OR /GARBARGEGEGE
  # binding.pry
  @beginning = Beginning.get_phrase(params[:category])
  @middle = Middle.get_phrase
  @final = Final.get_phrase
  save_excuse
  @top5_excuses = top_excuses
  erb :excuse_gen
end

get '/upvote' do
  # not sure how to select the current excuse displayed. we need to grab that excuse call the increment_upvote method and save it.
  vote_excuse = Excuse.last
  vote_excuse.increment_upvote
  vote_excuse.save
end

# get '/top_excuses' do
#   @top5_excuses = Excuse.first(5)
#   erb :excuse_gen
# end