class RemoveExpiryTime < ActiveRecord::Migration
  def change
    remove_column :polls, :end
  end
end
