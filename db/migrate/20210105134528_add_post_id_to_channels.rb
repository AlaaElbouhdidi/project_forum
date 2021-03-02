class AddPostIdToChannels < ActiveRecord::Migration[6.0]
  def change
    add_column :channels, :post_id, :integer
  end
end
