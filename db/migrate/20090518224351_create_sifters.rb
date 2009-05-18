class CreateSifters < ActiveRecord::Migration
  def self.up
    create_table :sifters do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :sifters
  end
end
