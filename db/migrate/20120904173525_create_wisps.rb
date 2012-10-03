class CreateWisps < ActiveRecord::Migration
  def change
    create_table :wisps do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
