class AddUpvoteCount < ActiveRecord::Migration

  def change
    add_column :excuses, :upvote_count, :integer, default: 0
  end

end