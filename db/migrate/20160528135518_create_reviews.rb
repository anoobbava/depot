class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :topic
      t.text :description
      t.integer :user_id
      t.timestamps
    end
  end
end
