class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :firstname
      t.string :lastname 
      t.string :wholename 
      t.string :email
      t.string :url # home page, blog, whatever
      t.string :address
      t.string :city
      t.string :state
      t.integer :zipcode
      t.string :geo # latitude and longitude
      t.string :photo # This will be in /public/photos or something 
      t.bool :biz, :default => false # A check if something is a business 
     end
    end
  end

  def self.down
    drop_table :users
  end
end
