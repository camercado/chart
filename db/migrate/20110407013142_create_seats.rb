class CreateSeats < ActiveRecord::Migration
  def self.up
    create_table :seats do |t|
      t.string :location

      t.timestamps
    end
  end

  def self.down
    drop_table :seats
  end
end
