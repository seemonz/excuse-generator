helpers do

  def pull_top_excuses
    @top5_excuses = Excuse.first(5)
    
  end

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

end

# Homepage (Root path)
get '/' do
  erb :excuse_gen
end

# clicking late button
get '/:category' do 
  #WORRY ABOUT /NIL OR /GARBARGEGEGE
  # binding.pry
  @beginning = Beginning.get_phrase(params[:category])
  @middle = Middle.get_phrase
  @final = Final.get_phrase
  save_excuse
  @top5_excuses = Excuse.first(5)
  erb :excuse_gen
end

get '/upvote' do
  upvote = Upvote.new
  upvote.save
  redirect '/'
end

# get '/top_excuses' do
#   @top5_excuses = Excuse.first(5)
#   erb :excuse_gen
# end