class AddUpvoteCount < ActiveRecord::Migration

  def change
    add_column :excuses, :upvote_count, :integer
  end

end