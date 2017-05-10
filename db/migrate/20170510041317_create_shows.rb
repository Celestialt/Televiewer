class CreateShows < ActiveRecord::Migration[5.0]
  def change
    create_table :shows do |t|
    	t.string :title
    	t.integer :year
    	t.string :genre
      t.timestamps
    end
  end
end
