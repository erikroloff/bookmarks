class CreateBookmarks < ActiveRecord::Migration
  def change
    create_table :bookmarks do |t|
      t.string :url
      t.string :name
      t.datetime :saved_at

      t.timestamps
    end
  end
end
