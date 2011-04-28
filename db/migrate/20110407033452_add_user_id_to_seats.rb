class AddUserIdToSeats < ActiveRecord::Migration
  def self.up
    add_column :seats, :user_id, :integer
  end

  def self.down
    remove_column :seats, :user_id
  end
end
