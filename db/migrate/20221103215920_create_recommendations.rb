class CreateRecommendations < ActiveRecord::Migration[7.0]
  def change
    create_table :recommendations do |t|
      t.string :title, null: false
      t.text :description
      t.string :cover_url
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
