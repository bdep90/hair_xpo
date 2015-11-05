class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :name
      t.string :img1
      t.string :img2
      t.string :img3
      t.string :cap1
      t.string :cap2
      t.string :cap3
      t.string :vid
      t.belongs_to :user

      t.timestamps
    end
  end
end
