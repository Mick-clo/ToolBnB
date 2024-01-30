class AddToolIdToUsers < ActiveRecord::Migration[7.1]
  def change
    add_reference :users, :tool, null: false, foreign_key: true
  end
end
