class AddColumnToVideos < ActiveRecord::Migration
  def change
  	add_column :videos, :creation, :datetime
  end
end
