class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :url
      t.string :type
      t.references :user, index: true

      t.timestamps
    end
  end
end
