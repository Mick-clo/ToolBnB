class CreateTools < ActiveRecord::Migration[7.1]
  def change
    create_table :tools do |t|

      t.timestamps
    end
  end
end
