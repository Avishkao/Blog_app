class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :description
      t.string :shared , array: true, default: []
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end

  end
end
