class ChangeDataTypeForVideos < ActiveRecord::Migration
  def self.up
    change_table :videos do |t|
      t.change :post_id, :bigint
    end
  end
  def self.down
    change_table :videos do |t|
      t.change :post_id, :integer
    end
  end
end
