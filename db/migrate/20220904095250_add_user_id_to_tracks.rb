class AddUserIdToTracks < ActiveRecord::Migration[7.0]
  def change
    add_column :tracks, :user_id, :integer
  end
end
