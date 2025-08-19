<<<<<<< HEAD
class CreatePosts < ActiveRecord::Migration[5.2]
=======
class CreatePosts < ActiveRecord::Migration[7.1]
>>>>>>> rails-7.1
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
