class CreateStories < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
      t.string "author", :limit => 30, :null => false
      t.text "story", :limit => 1000, :null => false
      t.timestamps
    end
  end
end
