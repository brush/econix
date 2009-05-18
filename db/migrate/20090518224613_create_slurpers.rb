class CreateSlurpers < ActiveRecord::Migration
  def self.up
    create_table :slurpers do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :slurpers
  end
end
