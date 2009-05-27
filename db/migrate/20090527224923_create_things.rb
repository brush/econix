class CreateThings < ActiveRecord::Migration
# See hListing schema: http://microformats.org/wiki/hlisting-proposal#Schema
  def self.up
    create_table :things do |t|
      t.string :action, :null => false # sell, buy, trade, etc
      t.string :lister, :null => false
      t.datetime :posttime, :default => Time.now
      t.datetime :expiretime
      t.float :price
      t.string :info # URL, photo, geo, etc
      t.string :title # Equivanlent to "summary" in hListing spec
      t.string :desc, :null => false # Description
      t.string :tag # Tags
      t.string :permalink # Optional 
    end
  end

  def self.down
    drop_table :things
  end
end
