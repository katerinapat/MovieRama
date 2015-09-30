class AddCachedVotesToMovies < ActiveRecord::Migration
   def self.up
    
    add_column :movies, :cached_votes_up, :integer, :default => 0
    add_column :movies, :cached_votes_down, :integer, :default => 0
    add_index  :movies, :cached_votes_up
    add_index  :movies, :cached_votes_down

    # Uncomment this line to force caching of existing votes
    # Post.find_each(&:update_cached_votes)
  end

  def self.down
    remove_column :movies, :cached_votes_total
    remove_column :movies, :cached_votes_score
    remove_column :movies, :cached_votes_up
    remove_column :movies, :cached_votes_down
    remove_column :movies, :cached_weighted_score
    remove_column :movies, :cached_weighted_total
    remove_column :movies, :cached_weighted_average
    remove_column :movies, :likes
    remove_column :movies, :hates
	end
	
end
