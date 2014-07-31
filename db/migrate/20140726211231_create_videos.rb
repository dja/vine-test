class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :avatar_url
      t.string :description
      t.string :foursquare_venue_id
      t.integer :loop_count
      t.string :permalink_url
      t.string :share_url
      t.string :thumbnail_url
      t.string :video_low_url
      t.string :video_url
      t.integer :like_count
      t.integer :post_id
      t.integer :comments_count

      t.timestamps
    end
  end
end
