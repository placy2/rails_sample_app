class RemoveResentFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :resent_sent_at, :datetime
  end
end
