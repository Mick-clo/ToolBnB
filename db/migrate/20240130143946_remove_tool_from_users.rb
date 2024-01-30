class RemoveToolFromUsers < ActiveRecord::Migration[7.1]
  def change
    remove_reference(:users, :tool, foreign_key: true)
  end
end
